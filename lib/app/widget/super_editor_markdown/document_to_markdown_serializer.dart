import 'package:flutter/foundation.dart';
import 'package:super_editor/super_editor.dart';

import 'super_editor_syntax.dart';

/// Serializes the given [doc] to Markdown text.
///
/// The given [syntax] controls how the [doc] is serialized, e.g., [MarkdownSyntax.normal]
/// for standard Markdown syntax, or [MarkdownSyntax.superEditor] to use Super Editor's
/// extended syntax.
///
/// To serialize [DocumentNode]s that aren't part of Super Editor's standard serialization,
/// provide [customNodeSerializers] to serialize those custom nodes.
String serializeDocumentToMarkdown(
  Document doc, {
  MarkdownSyntax syntax = MarkdownSyntax.superEditor,
  List<DocumentNodeMarkdownSerializer> customNodeSerializers = const [],
}) {
  final nodeSerializers = [
    // Custom serializers first, in case the custom serializers handle
    // specialized cases of traditional nodes, such as serializing a
    // `ParagraphNode` with a special `"blockType"`.
    ...customNodeSerializers,
    const ImageNodeSerializer(),
    const HorizontalRuleNodeSerializer(),
    const ListItemNodeSerializer(),
    ParagraphNodeSerializer(syntax),
  ];

  StringBuffer buffer = StringBuffer();

  for (int i = 0; i < doc.nodes.length; ++i) {
    if (i > 0) {
      // Add a new line before every node, except the first node.
      buffer.writeln("");
    }

    // Serialize the current node to markdown.
    final node = doc.nodes[i];
    for (final serializer in nodeSerializers) {
      final serialization = serializer.serialize(doc, node);
      if (serialization != null) {
        buffer.write(serialization);
        break;
      }
    }
  }

  return buffer.toString();
}

/// Serializes a given [DocumentNode] to a Markdown `String`.
abstract class DocumentNodeMarkdownSerializer {
  String? serialize(Document document, DocumentNode node);
}

/// A [DocumentNodeMarkdownSerializer] that automatically rejects any
/// [DocumentNode] that doesn't match the given [NodeType].
///
/// Use this base class to avoid repeating type checks across various
/// serializers.
abstract class NodeTypedDocumentNodeMarkdownSerializer<NodeType>
    implements DocumentNodeMarkdownSerializer {
  const NodeTypedDocumentNodeMarkdownSerializer();

  @override
  String? serialize(Document document, DocumentNode node) {
    if (node is! NodeType) {
      return null;
    }

    return doSerialization(document, node as NodeType);
  }

  @protected
  String doSerialization(Document document, NodeType node);
}

/// [DocumentNodeMarkdownSerializer] for serializing [ImageNode]s as standard Markdown
/// images.
class ImageNodeSerializer
    extends NodeTypedDocumentNodeMarkdownSerializer<ImageNode> {
  const ImageNodeSerializer();

  @override
  String doSerialization(Document document, ImageNode node) {
    return '![${node.altText}](${node.imageUrl})';
  }
}

/// [DocumentNodeMarkdownSerializer] for serializing [HorizontalRuleNode]s as standard
/// Markdown horizontal rules.
class HorizontalRuleNodeSerializer
    extends NodeTypedDocumentNodeMarkdownSerializer<HorizontalRuleNode> {
  const HorizontalRuleNodeSerializer();

  @override
  String doSerialization(Document document, HorizontalRuleNode node) {
    return '---';
  }
}

/// [DocumentNodeMarkdownSerializer] for serializing [ListItemNode]s as standard Markdown
/// list items.
///
/// Includes support for ordered and unordered list items.
class ListItemNodeSerializer
    extends NodeTypedDocumentNodeMarkdownSerializer<ListItemNode> {
  const ListItemNodeSerializer();

  @override
  String doSerialization(Document document, ListItemNode node) {
    final buffer = StringBuffer();

    final indent = List.generate(node.indent + 1, (index) => '  ').join('');
    final symbol = node.type == ListItemType.unordered ? '*' : '1.';

    buffer.write('$indent$symbol ${node.text.toMarkdown()}');

    final nodeIndex = document.getNodeIndexById(node.id);
    final nodeBelow = nodeIndex < document.nodes.length - 1
        ? document.nodes[nodeIndex + 1]
        : null;
    if (nodeBelow != null &&
        (nodeBelow is! ListItemNode || nodeBelow.type != node.type)) {
      // This list item is the last item in the list. Add an extra
      // blank line after it.
      buffer.writeln('');
    }

    return buffer.toString();
  }
}

/// [DocumentNodeMarkdownSerializer] for serializing [ParagraphNode]s as standard Markdown
/// paragraphs.
///
/// Includes support for headers, blockquotes, and code blocks.
class ParagraphNodeSerializer
    extends NodeTypedDocumentNodeMarkdownSerializer<ParagraphNode> {
  const ParagraphNodeSerializer(this.markdownSyntax);

  final MarkdownSyntax markdownSyntax;

  @override
  String doSerialization(Document document, ParagraphNode node) {
    final buffer = StringBuffer();

    final Attribution? blockType =
        node.getMetadataValue('blockType') as Attribution?;

    if (blockType == header1Attribution) {
      buffer.write('# ${node.text.toMarkdown()}');
    } else if (blockType == header2Attribution) {
      buffer.write('## ${node.text.toMarkdown()}');
    } else if (blockType == header3Attribution) {
      buffer.write('### ${node.text.toMarkdown()}');
    } else if (blockType == header4Attribution) {
      buffer.write('#### ${node.text.toMarkdown()}');
    } else if (blockType == header5Attribution) {
      buffer.write('##### ${node.text.toMarkdown()}');
    } else if (blockType == header6Attribution) {
      buffer.write('###### ${node.text.toMarkdown()}');
    } else if (blockType == blockquoteAttribution) {
      // TODO: handle multiline
      buffer.write('> ${node.text.toMarkdown()}');
    } else if (blockType == codeAttribution) {
      buffer //
        ..writeln('```') //
        ..writeln(node.text.toMarkdown()) //
        ..write('```');
    } else {
      final String? textAlign = node.getMetadataValue('textAlign') as String?;
      // Left alignment is the default, so there is no need to add the alignment token.
      if (markdownSyntax == MarkdownSyntax.superEditor &&
          textAlign != null &&
          textAlign != 'left') {
        final alignmentToken = _convertAlignmentToMarkdown(textAlign);
        if (alignmentToken != null) {
          buffer.writeln(alignmentToken);
        }
      }
      buffer.write(node.text.toMarkdown());
    }

    // We're not at the end of the document yet. Add a blank line after the
    // paragraph so that we can tell the difference between separate
    // paragraphs vs. newlines within a single paragraph.
    final nodeIndex = document.getNodeIndexById(node.id);
    if (nodeIndex != document.nodes.length - 1) {
      buffer.writeln();
    }

    return buffer.toString();
  }
}

String? _convertAlignmentToMarkdown(String alignment) {
  switch (alignment) {
    case 'left':
      return ':---';
    case 'center':
      return ':---:';
    case 'right':
      return '---:';
    case 'justify':
      return '-::-';
    default:
      return null;
  }
}

/// Extension on [AttributedText] to serialize the [AttributedText] to a Markdown `String`.
extension Markdown on AttributedText {
  String toMarkdown() {
    final serializer = AttributedTextMarkdownSerializer();
    return serializer.serialize(this);
  }
}

/// Serializes an [AttributedText] into markdown format
class AttributedTextMarkdownSerializer extends AttributionVisitor {
  late String _fullText;
  late StringBuffer _buffer;
  late int _bufferCursor;

  String serialize(AttributedText attributedText) {
    _fullText = attributedText.text;
    _buffer = StringBuffer();
    _bufferCursor = 0;
    attributedText.visitAttributions(this);
    return _buffer.toString();
  }

  @override
  void visitAttributions(
    AttributedText fullText,
    int index,
    Set<Attribution> startingAttributions,
    Set<Attribution> endingAttributions,
  ) {
    // Write out the text between the end of the last markers, and these new markers.
    _writeTextToBuffer(
      fullText.text.substring(_bufferCursor, index),
    );

    // Add start markers.
    if (startingAttributions.isNotEmpty) {
      final markdownStyles = _sortAndSerializeAttributions(
          startingAttributions, AttributionVisitEvent.start);
      // Links are different from the plain styles since they are both not NamedAttributions (and therefore
      // can't be checked using equality comparison) and asymmetrical in markdown.
      final linkMarker =
          _encodeLinkMarker(startingAttributions, AttributionVisitEvent.start);

      _buffer
        ..write(linkMarker)
        ..write(markdownStyles);
    }

    // Write out the character at this index.
    _writeTextToBuffer(_fullText[index]);
    _bufferCursor = index + 1;

    // Add end markers.
    if (endingAttributions.isNotEmpty) {
      final markdownStyles = _sortAndSerializeAttributions(
          endingAttributions, AttributionVisitEvent.end);
      // Links are different from the plain styles since they are both not NamedAttributions (and therefore
      // can't be checked using equality comparison) and asymmetrical in markdown.
      final linkMarker =
          _encodeLinkMarker(endingAttributions, AttributionVisitEvent.end);

      _buffer
        ..write(markdownStyles)
        ..write(linkMarker);
    }
  }

  @override
  void onVisitEnd() {
    // When the last span has no attributions, we still have text that wasn't added to the buffer yet.
    if (_bufferCursor <= _fullText.length - 1) {
      _writeTextToBuffer(_fullText.substring(_bufferCursor));
    }
  }

  /// Writes the given [text] to [_buffer].
  ///
  /// Separates multiple lines in a single paragraph using two spaces before each line break.
  ///
  /// A line ending with two or more spaces represents a hard line break,
  /// as defined in the Markdown spec.
  void _writeTextToBuffer(String text) {
    final lines = text.split('\n');
    for (int i = 0; i < lines.length; i++) {
      if (i > 0) {
        // Adds two spaces before line breaks.
        // The Markdown spec defines that a line ending with two or more spaces
        // represents a hard line break, which causes the next line to be part of
        // the previous paragraph during deserialization.
        _buffer.write('  ');
        _buffer.write('\n');
      }

      _buffer.write(lines[i]);
    }
  }

  /// Serializes style attributions into markdown syntax in a repeatable
  /// order such that opening and closing styles match each other on
  /// the opening and closing ends of a span.
  static String _sortAndSerializeAttributions(
      Set<Attribution> attributions, AttributionVisitEvent event) {
    const startOrder = [
      codeAttribution,
      boldAttribution,
      italicsAttribution,
      strikethroughAttribution,
      underlineAttribution,
    ];

    final buffer = StringBuffer();
    final encodingOrder =
        event == AttributionVisitEvent.start ? startOrder : startOrder.reversed;

    for (final markdownStyleAttribution in encodingOrder) {
      if (attributions.contains(markdownStyleAttribution)) {
        buffer.write(_encodeMarkdownStyle(markdownStyleAttribution));
      }
    }

    return buffer.toString();
  }

  static String _encodeMarkdownStyle(Attribution attribution) {
    if (attribution == codeAttribution) {
      return '`';
    } else if (attribution == boldAttribution) {
      return '**';
    } else if (attribution == italicsAttribution) {
      return '*';
    } else if (attribution == strikethroughAttribution) {
      return '~';
    } else if (attribution == underlineAttribution) {
      return '¬';
    } else {
      return '';
    }
  }

  /// Checks for the presence of a link in the attributions and returns the characters necessary to represent it
  /// at the open or closing boundary of the attribution, depending on the event.
  static String _encodeLinkMarker(
      Set<Attribution> attributions, AttributionVisitEvent event) {
    final linkAttributions =
        attributions.where((element) => element is LinkAttribution?);
    if (linkAttributions.isNotEmpty) {
      final linkAttribution = linkAttributions.first as LinkAttribution;

      if (event == AttributionVisitEvent.start) {
        return '[';
      } else {
        return '](${linkAttribution.url.toString()})';
      }
    }
    return "";
  }
}
