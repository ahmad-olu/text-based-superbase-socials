import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:geat/app/widget/widget.dart';
import 'package:geat/create_post/view/widgets/editor_tool_bar.dart';
import 'package:geat/create_post/view/widgets/task.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:super_editor/super_editor.dart';

class CreateTextPostPage extends ConsumerStatefulWidget {
  const CreateTextPostPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CreateTextPostPageState();
}

class _CreateTextPostPageState extends ConsumerState<CreateTextPostPage> {
  final GlobalKey _docLayoutKey = GlobalKey();

  late Document _doc;
  late DocumentEditor _docEditor;
  late DocumentComposer _composer;
  late CommonEditorOperations _docOps;

  late FocusNode _editorFocusNode;

  late ScrollController _scrollController;

  OverlayEntry? _textFormatBarOverlayEntry;
  final _textSelectionAnchor = ValueNotifier<Offset?>(null);

  @override
  void initState() {
    super.initState();
    _doc = createInitialDocument()..addListener(_hideOrShowToolbar);
    _docEditor = DocumentEditor(document: _doc as MutableDocument);
    _composer = DocumentComposer()..addListener(_hideOrShowToolbar);
    _docOps = CommonEditorOperations(
      editor: _docEditor,
      composer: _composer,
      documentLayoutResolver: () =>
          _docLayoutKey.currentState as DocumentLayout,
    );
    _editorFocusNode = FocusNode();
    _scrollController = ScrollController()..addListener(_hideOrShowToolbar);
  }

  @override
  void dispose() {
    if (_textFormatBarOverlayEntry != null) {
      _textFormatBarOverlayEntry!.remove();
    }

    _scrollController.dispose();
    _editorFocusNode.dispose();
    _composer.dispose();
    super.dispose();
  }

  void _hideOrShowToolbar() {
    if (_gestureMode != DocumentGestureMode.mouse) {
      // We only add our own toolbar when using mouse. On mobile, a bar
      // is rendered for us.
      return;
    }

    final selection = _composer.selection;
    if (selection == null) {
      // Nothing is selected. We don't want to show a toolbar
      // in this case.
      _hideEditorToolbar();

      return;
    }
    if (selection.base.nodeId != selection.extent.nodeId) {
      // More than one node is selected. We don't want to show
      // a toolbar in this case.
      _hideEditorToolbar();
      return;
    }
    if (selection.isCollapsed) {
      // We only want to show the toolbar when a span of text
      // is selected. Therefore, we ignore collapsed selections.
      _hideEditorToolbar();
      return;
    }

    final selectedNode = _doc.getNodeById(selection.extent.nodeId);

    if (selectedNode is ImageNode) {
      _hideEditorToolbar();
      return;
    }

    if (selectedNode is TextNode) {
      // Show the editor's toolbar for text styling.
      _showEditorToolbar();

      return;
    } else {
      // The currently selected content is not a paragraph. We don't
      // want to show a toolbar in this case.
      _hideEditorToolbar();
    }
  }

  void _showEditorToolbar() {
    if (_textFormatBarOverlayEntry == null) {
      // Create an overlay entry to build the editor toolbar.
      // TODO: add an overlay to the Editor widget to avoid using the
      //       application overlay
      _textFormatBarOverlayEntry ??= OverlayEntry(builder: (context) {
        return EditorToolbar(
          anchor: _textSelectionAnchor,
          editorFocusNode: _editorFocusNode,
          editor: _docEditor,
          composer: _composer,
          closeToolbar: _hideEditorToolbar,
        );
      });

      // Display the toolbar in the application overlay.
      final overlay = Overlay.of(context);
      overlay.insert(_textFormatBarOverlayEntry!);
    }

    // Schedule a callback after this frame to locate the selection
    // bounds on the screen and display the toolbar near the selected
    // text.
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      if (_textFormatBarOverlayEntry == null) {
        return;
      }

      final docBoundingBox = (_docLayoutKey.currentState as DocumentLayout)
          .getRectForSelection(
              _composer.selection!.base, _composer.selection!.extent)!;
      final docBox =
          _docLayoutKey.currentContext!.findRenderObject() as RenderBox;
      final overlayBoundingBox = Rect.fromPoints(
        docBox.localToGlobal(docBoundingBox.topLeft),
        docBox.localToGlobal(docBoundingBox.bottomRight),
      );

      _textSelectionAnchor.value = overlayBoundingBox.topCenter;
    });
  }

  void _hideEditorToolbar() {
    // Null out the selection anchor so that when it re-appears,
    // the bar doesn't momentarily "flash" at its old anchor position.
    _textSelectionAnchor.value = null;

    if (_textFormatBarOverlayEntry != null) {
      // Remove the toolbar overlay and null-out the entry.
      // We null out the entry because we can't query whether
      // or not the entry exists in the overlay, so in our
      // case, null implies the entry is not in the overlay,
      // and non-null implies the entry is in the overlay.
      _textFormatBarOverlayEntry!.remove();
      _textFormatBarOverlayEntry = null;
    }

    // Ensure that focus returns to the editor.
    //
    // I tried explicitly unfocus()'ing the URL textfield
    // in the toolbar but it didn't return focus to the
    // editor. I'm not sure why.
    _editorFocusNode.requestFocus();
  }

  DocumentGestureMode get _gestureMode {
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return DocumentGestureMode.android;
      case TargetPlatform.iOS:
        return DocumentGestureMode.iOS;
      case TargetPlatform.fuchsia:
      case TargetPlatform.linux:
      case TargetPlatform.macOS:
      case TargetPlatform.windows:
        return DocumentGestureMode.mouse;
    }
  }

  bool get _isMobile => _gestureMode != DocumentGestureMode.mouse;

  DocumentInputSource get _inputSource {
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
      case TargetPlatform.iOS:
      case TargetPlatform.fuchsia:
      case TargetPlatform.linux:
      case TargetPlatform.macOS:
      case TargetPlatform.windows:
        return DocumentInputSource.ime;
      // return DocumentInputSource.keyboard;
    }
  }

  void _cut() => _docOps.cut();
  void _copy() => _docOps.copy();
  void _paste() => _docOps.paste();
  void _selectAll() => _docOps.selectAll();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const FittedBox(
          child: Text(
            'Create a Novel or Write up',
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0, bottom: 16.0),
            child: ElevatedButton(
              onPressed: () {
                final markdown = serializeDocumentToMarkdown(_doc);
                log(markdown);
              },
              style: TextButton.styleFrom(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(7)),
                  side: BorderSide(),
                ),
              ),
              child: const Text('Upload Post'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16.0, bottom: 16.0),
            child: IconButton(
              onPressed: () {
                createPostModalBottomSheet(context);
              },
              icon: const Icon(Icons.extension_sharp),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(child: _buildEditor()),
              ],
            ),
          ),
          if (_isMobile) _buildMountedToolbar(),
        ],
      ),
    );
  }

  Widget _buildEditor() {
    return SuperEditor(
      editor: _docEditor,
      composer: _composer,
      focusNode: _editorFocusNode,
      scrollController: _scrollController,
      documentLayoutKey: _docLayoutKey,
      documentOverlayBuilders: [
        DefaultCaretOverlayBuilder(
          CaretStyle().copyWith(
              color: Theme.of(context).brightness == Brightness.light
                  ? Colors.black
                  : Colors.redAccent),
        ),
      ],
      selectionStyle: Theme.of(context).brightness == Brightness.light
          ? defaultSelectionStyle
          : SelectionStyles(
              selectionColor: Colors.red.withOpacity(0.3),
            ),
      stylesheet: defaultStylesheet.copyWith(
        addRulesAfter: [
          if (Theme.of(context).brightness == Brightness.dark)
            ..._darkModeStyles,
          taskStyles,
        ],
      ),
      componentBuilders: [
        HeaderWithHintComponentBuilder(context),
        ...defaultComponentBuilders,
        TaskComponentBuilder(_docEditor),
      ],
      gestureMode: _gestureMode,
      inputSource: _inputSource,
      keyboardActions: _inputSource == DocumentInputSource.ime
          ? defaultImeKeyboardActions
          : defaultKeyboardActions,
      androidToolbarBuilder: (_) => AndroidTextEditingFloatingToolbar(
        onCutPressed: _cut,
        onCopyPressed: _copy,
        onPastePressed: _paste,
        onSelectAllPressed: _selectAll,
      ),
      iOSToolbarBuilder: (_) => IOSTextEditingFloatingToolbar(
        onCutPressed: _cut,
        onCopyPressed: _copy,
        onPastePressed: _paste,
      ),
    );
  }

  Widget _buildMountedToolbar() {
    return MultiListenableBuilder(
      listenables: <Listenable>{
        _doc,
        _composer.selectionNotifier,
      },
      builder: (_) {
        final selection = _composer.selection;

        if (selection == null) {
          return const SizedBox();
        }

        return KeyboardEditingToolbar(
          document: _doc,
          composer: _composer,
          commonOps: _docOps,
        );
      },
    );
  }

  Future<dynamic> createPostModalBottomSheet(BuildContext context) {
    final theme = Theme.of(context);
    return showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      builder: (context) {
        return SizedBox(
          height: 400,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: const Text('Pick an Image'),
                        style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              side: BorderSide(
                                  color: theme.colorScheme.secondary),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20))),
                        )),
                    Card(
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: theme.colorScheme.secondary),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20))),
                      child: Center(
                        child: Icon(
                          Icons.image,
                          size: 150,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    )
                  ],
                ),
                TextFormField(
                  initialValue: '',
                  decoration: InputDecoration(
                    labelText: 'Title',
                    helperText: 'mogomcrica',
                    //errorText: _emailError(context, email),
                    errorMaxLines: 2,
                    filled: false,
                    fillColor: theme.scaffoldBackgroundColor,
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: theme.primaryColor,
                      width: 3,
                    )),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  onChanged: (value) {},
                ),
                TextFormField(
                  initialValue: '',
                  decoration: InputDecoration(
                    labelText: 'Sub Title',
                    helperText: '-------------===========>',
                    //errorText: _emailError(context, email),
                    errorMaxLines: 2,
                    filled: false,
                    fillColor: theme.scaffoldBackgroundColor,
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: theme.primaryColor,
                      width: 3,
                    )),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  onChanged: (value) {},
                ),
                SwitchListTile(
                  title: const Text('draft'),
                  subtitle: const Text(
                      'only you would see this until you toggle the switch'),
                  value: true,
                  onChanged: (value) {},
                ),
                SwitchListTile(
                  title: const Text('Can Re-imagine'),
                  value: false,
                  onChanged: (value) {},
                ),
                SwitchListTile(
                  title: const Text('Can Comment'),
                  value: false,
                  onChanged: (value) {},
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Close'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

final _darkModeStyles = [
  StyleRule(
    BlockSelector.all,
    (doc, docNode) {
      return {
        "textStyle": const TextStyle(
          color: Color(0xFFCCCCCC),
        ),
      };
    },
  ),
  StyleRule(
    const BlockSelector("header1"),
    (doc, docNode) {
      return {
        "textStyle": const TextStyle(
          color: Color(0xFF888888),
        ),
      };
    },
  ),
  StyleRule(
    const BlockSelector("header2"),
    (doc, docNode) {
      return {
        "textStyle": const TextStyle(
          color: Color(0xFF888888),
        ),
      };
    },
  ),
];

MutableDocument createInitialDocument() {
  return MutableDocument(
    nodes: [
      ParagraphNode(
        id: DocumentEditor.createNodeId(),
        text: AttributedText(
          text: 'Example Document',
        ),
        metadata: {
          'blockType': header1Attribution,
        },
      ),
      HorizontalRuleNode(id: DocumentEditor.createNodeId()),
      ParagraphNode(
        id: DocumentEditor.createNodeId(),
        text: AttributedText(
          text:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus sed sagittis urna. Aenean mattis ante justo, quis sollicitudin metus interdum id. Aenean ornare urna ac enim consequat mollis. In aliquet convallis efficitur. Phasellus convallis purus in fringilla scelerisque. Ut ac orci a turpis egestas lobortis. Morbi aliquam dapibus sem, vitae sodales arcu ultrices eu. Duis vulputate mauris quam, eleifend pulvinar quam blandit eget.',
        ),
      ),
      ParagraphNode(
        id: DocumentEditor.createNodeId(),
        text: AttributedText(
          text: 'This is a blockquote!',
        ),
        metadata: {
          'blockType': blockquoteAttribution,
        },
      ),
      ListItemNode.unordered(
        id: DocumentEditor.createNodeId(),
        text: AttributedText(
          text: 'This is an unordered list item',
        ),
      ),
      ListItemNode.unordered(
        id: DocumentEditor.createNodeId(),
        text: AttributedText(
          text: 'This is another list item',
        ),
      ),
      ListItemNode.unordered(
        id: DocumentEditor.createNodeId(),
        text: AttributedText(
          text: 'This is a 3rd list item',
        ),
      ),
      ParagraphNode(
        id: DocumentEditor.createNodeId(),
        text: AttributedText(
            text:
                'Cras vitae sodales nisi. Vivamus dignissim vel purus vel aliquet. Sed viverra diam vel nisi rhoncus pharetra. Donec gravida ut ligula euismod pharetra. Etiam sed urna scelerisque, efficitur mauris vel, semper arcu. Nullam sed vehicula sapien. Donec id tellus volutpat, eleifend nulla eget, rutrum mauris.'),
      ),
      ListItemNode.ordered(
        id: DocumentEditor.createNodeId(),
        text: AttributedText(
          text: 'First thing to do',
        ),
      ),
      ListItemNode.ordered(
        id: DocumentEditor.createNodeId(),
        text: AttributedText(
          text: 'Second thing to do',
        ),
      ),
      ListItemNode.ordered(
        id: DocumentEditor.createNodeId(),
        text: AttributedText(
          text: 'Third thing to do',
        ),
      ),
      ParagraphNode(
        id: DocumentEditor.createNodeId(),
        text: AttributedText(
          text:
              'Nam hendrerit vitae elit ut placerat. Maecenas nec congue neque. Fusce eget tortor pulvinar, cursus neque vitae, sagittis lectus. Duis mollis libero eu scelerisque ullamcorper. Pellentesque eleifend arcu nec augue molestie, at iaculis dui rutrum. Etiam lobortis magna at magna pellentesque ornare. Sed accumsan, libero vel porta molestie, tortor lorem eleifend ante, at egestas leo felis sed nunc. Quisque mi neque, molestie vel dolor a, eleifend tempor odio.',
        ),
      ),
      ParagraphNode(
        id: DocumentEditor.createNodeId(),
        text: AttributedText(
          text:
              'Etiam id lacus interdum, efficitur ex convallis, accumsan ipsum. Integer faucibus mollis mauris, a suscipit ante mollis vitae. Fusce justo metus, congue non lectus ac, luctus rhoncus tellus. Phasellus vitae fermentum orci, sit amet sodales orci. Fusce at ante iaculis nunc aliquet pharetra. Nam placerat, nisl in gravida lacinia, nisl nibh feugiat nunc, in sagittis nisl sapien nec arcu. Nunc gravida faucibus massa, sit amet accumsan dolor feugiat in. Mauris ut elementum leo.',
        ),
      ),
    ],
  );
}

TextStyle _textStyleBuilder(Set<Attribution> attributions) {
  // We only care about altering a few styles. Start by getting
  // the standard styles for these attributions.
  var newStyle = defaultStyleBuilder(attributions);

  // Style headers
  for (final attribution in attributions) {
    if (attribution == header1Attribution) {
      newStyle = newStyle.copyWith(
        color: const Color(0xFF444444),
        fontSize: 48,
        fontWeight: FontWeight.bold,
      );
    } else if (attribution == header2Attribution) {
      newStyle = newStyle.copyWith(
        color: const Color(0xFF444444),
        fontSize: 30,
        fontWeight: FontWeight.bold,
      );
    } else if (attribution == header3Attribution) {
      newStyle = newStyle.copyWith(
        color: const Color(0xFF444444),
        fontSize: 16,
        fontWeight: FontWeight.bold,
      );
    }
  }

  return newStyle;
}

class HeaderWithHintComponentBuilder implements ComponentBuilder {
  const HeaderWithHintComponentBuilder(this.context);
  final BuildContext context;

  @override
  SingleColumnLayoutComponentViewModel? createViewModel(
      Document document, DocumentNode node) {
    // This component builder can work with the standard paragraph view model.
    // We'll defer to the standard paragraph component builder to create it.
    return null;
  }

  @override
  Widget? createComponent(SingleColumnDocumentComponentContext componentContext,
      SingleColumnLayoutComponentViewModel componentViewModel) {
    if (componentViewModel is! ParagraphComponentViewModel) {
      return null;
    }

    final blockAttribution = componentViewModel.blockType;
    if (!(const [header1Attribution, header2Attribution, header3Attribution])
        .contains(blockAttribution)) {
      return null;
    }

    final textSelection = componentViewModel.selection;

    return TextWithHintComponent(
      key: componentContext.componentKey,
      text: componentViewModel.text,
      textStyleBuilder: _textStyleBuilder,
      metadata: componentViewModel.blockType != null
          ? {
              'blockType': componentViewModel.blockType,
            }
          : {},
      // This is the text displayed as a hint.
      hintText: AttributedText(
        text: "You'r story starts here...",
        spans: AttributedSpans(
          attributions: [
            const SpanMarker(
                attribution: italicsAttribution,
                offset: 12,
                markerType: SpanMarkerType.start),
            const SpanMarker(
                attribution: italicsAttribution,
                offset: 15,
                markerType: SpanMarkerType.end),
          ],
        ),
      ),
      // This is the function that selects styles for the hint text.
      hintStyleBuilder: (Set<Attribution> attributions) =>
          _textStyleBuilder(attributions).copyWith(
        color: Theme.of(context).brightness == Brightness.dark
            ? const Color(0xFFDDDDDD)
            : Colors.grey,
      ),
      textSelection: textSelection,
      selectionColor: componentViewModel.selectionColor,
    );
  }
}


// _buildScaffold(
//         context: context,
//         child: Column(
//           children: [
//             Expanded(
//                 child: CustomScrollView(
//               slivers: [
//                 SliverToBoxAdapter(
//                   child: SuperEditor(
//                     focusNode: _editorFocusNode,
//                     documentLayoutKey: _docLayoutKey,
//                     editor: _docEditor,
//                     composer: _composer,
//                     //softwareKeyboardHandler: _softwareKeyboardHandler,
//                     gestureMode: Platform.isIOS
//                         ? DocumentGestureMode.iOS
//                         : DocumentGestureMode.android,
//                     inputSource: DocumentInputSource.ime,
//                     iOSToolbarBuilder: (_) => IOSTextEditingFloatingToolbar(
//                       onCutPressed: () => _docOps.cut(),
//                       onCopyPressed: () => _docOps.copy(),
//                       onPastePressed: () => _docOps.paste(),
//                     ),
//                     androidToolbarBuilder: (_) =>
//                         AndroidTextEditingFloatingToolbar(
//                       onCutPressed: () => _docOps.cut(),
//                       onCopyPressed: () => _docOps.copy(),
//                       onPastePressed: () => _docOps.paste(),
//                       onSelectAllPressed: () => _docOps.selectAll(),
//                     ),
//                     stylesheet: defaultStylesheet.copyWith(
//                         documentPadding: const EdgeInsets.all(16),
//                         addRulesAfter: [
//                           if (Theme.of(context).brightness == Brightness.dark)
//                             ..._darkModeStyles
//                         ]),
//                     createOverlayControlsClipper: (_) =>
//                         const KeyboardToolbarClipper(),
//                     componentBuilders: [
//                       const HeaderWithHintComponentBuilder(),
//                       ...defaultComponentBuilders,
//                     ],
//                   ),
//                 )
//               ],
//             )),
//             MultiListenableBuilder(
//               listenables: <Listenable>{
//                 _doc,
//                 _composer.selectionNotifier,
//               },
//               builder: (_) => _buildMountedToolbar(),
//             ),
//           ],
//         ),
//       ),