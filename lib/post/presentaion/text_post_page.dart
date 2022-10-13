import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_limited_checkbox/flutter_limited_checkbox.dart';
import 'package:geat/auth/application/auth_bloc/auth_bloc.dart';
import 'package:geat/core/helper/mark_down_converter.dart';
import 'package:geat/core/infrastructure/storage_repository.dart';
import 'package:geat/post/application/text_post_cubit/text_post_cubit.dart';
import 'package:geat/post/infrastructure/post_repository.dart';
import 'package:geat/post/presentaion/widget/editor_tool_bar.dart';
import 'package:geat/post/presentaion/widget/task_component_builder.dart';
import 'package:image_picker/image_picker.dart';
import 'package:super_editor/super_editor.dart';

class TextPostPage extends StatelessWidget {
  const TextPostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TextPostCubit(
        context.read<PostRepository>(),
        context.read<AuthBloc>(),
        context.read<StorageRepository>(),
      ),
      child: const TextPostView(),
    );
  }
}

class TextPostView extends StatefulWidget {
  const TextPostView({super.key});

  @override
  State<TextPostView> createState() => _TextPostViewState();
}

class _TextPostViewState extends State<TextPostView> {
  final GlobalKey _docLayoutKey = GlobalKey();

  late Document _doc;
  late DocumentEditor _docEditor;
  late DocumentComposer _composer;
  late CommonEditorOperations _docOps;

  late FocusNode _editorFocusNode;

  late ScrollController _scrollController;

  final _darkBackground = const Color(0xFF222222);
  final _lightBackground = Colors.white;
  bool _isLight = true;

  OverlayEntry? _textFormatBarOverlayEntry;
  final _textSelectionAnchor = ValueNotifier<Offset?>(null);

  OverlayEntry? _imageFormatBarOverlayEntry;
  final _imageSelectionAnchor = ValueNotifier<Offset?>(null);

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
      _hideImageToolbar();

      return;
    }
    if (selection.isCollapsed) {
      // We only want to show the toolbar when a span of text
      // is selected. Therefore, we ignore collapsed selections.
      _hideEditorToolbar();
      _hideImageToolbar();

      return;
    }

    final selectedNode = _doc.getNodeById(selection.extent.nodeId);

    if (selectedNode is ImageNode) {
      // Show the editor's toolbar for image sizing.
      _showImageToolbar();
      _hideEditorToolbar();
      return;
    } else {
      // The currently selected content is not an image. We don't
      // want to show the image toolbar.
      _hideImageToolbar();
    }

    if (selectedNode is TextNode) {
      // Show the editor's toolbar for text styling.
      _showEditorToolbar();
      _hideImageToolbar();
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
      final overlay = Overlay.of(context)!;
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

  void _showImageToolbar() {
    if (_imageFormatBarOverlayEntry == null) {
      // Create an overlay entry to build the image toolbar.
      _imageFormatBarOverlayEntry ??= OverlayEntry(builder: (context) {
        return ImageFormatToolbar(
          anchor: _imageSelectionAnchor,
          composer: _composer,
          setWidth: (nodeId, width) {
            final node = _doc.getNodeById(nodeId)!;
            final currentStyles =
                SingleColumnLayoutComponentStyles.fromMetadata(node);
            SingleColumnLayoutComponentStyles(
              width: width,
              padding: currentStyles.padding,
            ).applyTo(node);
          },
          closeToolbar: _hideImageToolbar,
        );
      });

      // Display the toolbar in the application overlay.
      final overlay = Overlay.of(context)!;
      overlay.insert(_imageFormatBarOverlayEntry!);
    }

    // Schedule a callback after this frame to locate the selection
    // bounds on the screen and display the toolbar near the selected
    // text.
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      if (_imageFormatBarOverlayEntry == null) {
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

      _imageSelectionAnchor.value = overlayBoundingBox.center;
    });
  }

  void _hideImageToolbar() {
    // Null out the selection anchor so that when the bar re-appears,
    // it doesn't momentarily "flash" at its old anchor position.
    _imageSelectionAnchor.value = null;

    if (_imageFormatBarOverlayEntry != null) {
      // Remove the image toolbar overlay and null-out the entry.
      // We null out the entry because we can't query whether
      // or not the entry exists in the overlay, so in our
      // case, null implies the entry is not in the overlay,
      // and non-null implies the entry is in the overlay.
      _imageFormatBarOverlayEntry!.remove();
      _imageFormatBarOverlayEntry = null;
    }

    // Ensure that focus returns to the editor.
    _editorFocusNode.requestFocus();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Editor'),
        actions: [
          _savePost(),
          _pickExtraContents(),
          _buildLightAndDarkModeToggle(),
        ],
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: _buildEditor(),
              ),
              if (_isMobile) _buildMountedToolbar(),
            ],
          ),
        ],
      ),
    );
  }

  Widget _savePost() {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0, bottom: 16.0),
      child: ElevatedButton(
        onPressed: () {},
        child: const Text('Upload Post'),
      ),
    );
  }

  Widget _pickExtraContents() {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0, bottom: 16.0),
      child: IconButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(20),
              ),
            ),
            builder: (context) {
              return Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Close'),
                ),
              );
            },
          );
        },
        icon: _isLight
            ? Icon(
                Icons.extension_sharp,
                color: _isLight ? _darkBackground : _lightBackground,
              )
            : Icon(
                Icons.extension_outlined,
                color: _isLight ? _lightBackground : _darkBackground,
              ),
      ),
    );
  }

  Widget _buildLightAndDarkModeToggle() {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0, bottom: 16.0),
      child: IconButton(
        onPressed: () {
          setState(() {
            _isLight = !_isLight;
          });
        },
        icon: _isLight
            ? const Icon(
                Icons.dark_mode,
              )
            : const Icon(
                Icons.light_mode,
              ),
      ),
    );
  }

  Widget _buildEditor() {
    return ColoredBox(
      color: _isLight ? _lightBackground : _darkBackground,
      child: SuperEditor(
        editor: _docEditor,
        composer: _composer,
        focusNode: _editorFocusNode,
        scrollController: _scrollController,
        documentLayoutKey: _docLayoutKey,
        documentOverlayBuilders: [
          DefaultCaretOverlayBuilder(
            CaretStyle()
                .copyWith(color: _isLight ? Colors.black : Colors.redAccent),
          ),
        ],
        selectionStyle: _isLight
            ? defaultSelectionStyle
            : SelectionStyles(
                selectionColor: Colors.red.withOpacity(0.3),
              ),
        stylesheet: defaultStylesheet.copyWith(
          addRulesAfter: [
            if (!_isLight) ..._darkModeStyles,
            taskStyles,
          ],
        ),
        componentBuilders: [
          const HeaderWithHintComponentBuilder(),
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
}

// Makes text light, for use during dark mode styling.
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

Document createInitialDocument() {
  return MutableDocument(
    nodes: [
      ParagraphNode(
        id: DocumentEditor.createNodeId(),
        text: AttributedText(
          text: 'Welcome to Super Editor 💙 🚀',
        ),
        metadata: {
          'blockType': header1Attribution,
        },
      ),
    ],
  );
}

/// Styles to apply to all the text in the editor.
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

/// SuperEditor [ComponentBuilder] that builds a component for Header 1, Header 2,
/// and Header 3 `ParagraphNode`s, displays "header goes here..." when the content
/// text is empty.
///
/// [ComponentBuilder]s operate at the document level, which means that they can
/// make decisions based on global document structure. Therefore, if you'd like
/// to limit hint text to the very first header in a document, or the first header
/// and paragraph, you can make that decision at the beginning of your
/// [ComponentBuilder]:
///
/// ```
/// final nodeIndex = componentContext.document.getNodeIndex(
///   componentContext.documentNode,
/// );
///
/// if (nodeIndex > 0) {
///   // This isn't the first node, we don't ever want to show hint text.
///   return null;
/// }
/// ```
class HeaderWithHintComponentBuilder implements ComponentBuilder {
  const HeaderWithHintComponentBuilder();

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
        text: "Your story starts here....",
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
        color: const Color(0xFFDDDDDD),
      ),
      textSelection: textSelection,
      selectionColor: componentViewModel.selectionColor,
    );
  }
}

// class TextPostView extends StatefulWidget {
//   const TextPostView({super.key});

//   @override
//   State<TextPostView> createState() => _TextPostViewState();
// }

// class _TextPostViewState extends State<TextPostView> {
//   late ScrollController _scrollController;
//   final GlobalKey _docLayoutKey = GlobalKey();
//   String? contents;

//   late Document _doc;
//   late DocumentEditor _docEditor;
//   late DocumentComposer _composer;
//   late CommonEditorOperations _docOps;
//   late SoftwareKeyboardHandler _softwareKeyboardHandler;

//   FocusNode? _editorFocusNode;

//   final _darkBackground = const Color(0xFF222222);
//   final _lightBackground = Colors.white;
//   bool _isLight = true;

//   void _emptyDoc() {
//     if (_doc.nodes.isEmpty) {
//       _doc = MutableDocument(
//         nodes: [
//           ParagraphNode(
//             id: DocumentEditor.createNodeId(),
//             text: AttributedText(
//               text: "",
//             ),
//           ),
//         ],
//       );
//     }
//   }

//   void _configureImeActionButton() {
//     if (_composer.selection == null || !_composer.selection!.isCollapsed) {
//       _composer.imeConfiguration.value =
//           _composer.imeConfiguration.value.copyWith(
//         keyboardActionButton: TextInputAction.newline,
//       );
//       return;
//     }

//     final selectedNode = _doc.getNodeById(_composer.selection!.extent.nodeId);
//     if (selectedNode is ListItemNode) {
//       _composer.imeConfiguration.value =
//           _composer.imeConfiguration.value.copyWith(
//         keyboardActionButton: TextInputAction.done,
//       );
//       return;
//     }

//     _composer.imeConfiguration.value =
//         _composer.imeConfiguration.value.copyWith(
//       keyboardActionButton: TextInputAction.newline,
//     );
//   }

//   @override
//   void initState() {
//     super.initState();
//     _scrollController = ScrollController();
//     _doc = _createInitialDocument();
//     _docEditor = DocumentEditor(document: _doc as MutableDocument);
//     _composer = DocumentComposer()
//       ..addListener(_configureImeActionButton)
//       ..addListener(_emptyDoc);
//     _docOps = CommonEditorOperations(
//       editor: _docEditor,
//       composer: _composer,
//       documentLayoutResolver: () =>
//           _docLayoutKey.currentState as DocumentLayout,
//     );
//     _softwareKeyboardHandler = SoftwareKeyboardHandler(
//       editor: _docEditor,
//       composer: _composer,
//       commonOps: _docOps,
//     );
//     _editorFocusNode = FocusNode();
//   }

//   @override
//   void dispose() {
//     _scrollController.dispose();
//     _editorFocusNode!.dispose();
//     _composer.dispose();
//     super.dispose();
//   }

//   Widget _buildMountedToolbar() {
//     final selection = _composer.selection;

//     if (selection == null) {
//       return const SizedBox();
//     }

//     return KeyboardEditingToolbar(
//       document: _doc,
//       composer: _composer,
//       commonOps: CommonEditorOperations(
//         editor: _docEditor,
//         composer: _composer,
//         documentLayoutResolver: () =>
//             _docLayoutKey.currentState as DocumentLayout,
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     final formKey = GlobalKey<FormState>();
//     final theme = Theme.of(context);

//     return BlocConsumer<TextPostCubit, TextPostState>(
//       listener: (context, state) {
//         if (state.status == TextPostStatus.submitted) {
//           formKey.currentState?.reset();
//           context.read<TextPostCubit>().reset();
//           _docEditor.document.nodes.clear();
//         }
//       },
//       builder: (context, state) {
//         return Scaffold(
//           body: Stack(
//             children: [
//               Positioned.fill(
//                 child: CustomScrollView(
//                   controller: _scrollController,
//                   slivers: [
//                     SliverAppBar(
//                       title: Text(
//                         'Editor',
//                         style: theme.textTheme.headline1,
//                         textAlign: TextAlign.center,
//                       ),
//                       actions: [
//                         Padding(
//                           padding: const EdgeInsets.fromLTRB(2, 8, 19, 2),
//                           child: ElevatedButton.icon(
//                             onPressed: () => selectImage(context),
//                             style: TextButton.styleFrom(
//                               backgroundColor: state.postImage == null
//                                   ? theme.colorScheme.secondary.withOpacity(0.3)
//                                   : Colors.transparent,
//                             ),
//                             icon: const Icon(Icons.camera_outlined),
//                             label: Text(
//                               'add book Image',
//                               style: theme.textTheme.headline5,
//                             ),
//                           ),
//                         ),
//                       ],
//                       expandedHeight: 200.0,
//                       floating: true,
//                       leading: IconButton(
//                         onPressed: () => AutoRouter.of(context).pop(),
//                         icon: const Icon(Icons.arrow_back_outlined),
//                       ),
//                       flexibleSpace: FlexibleSpaceBar(
//                         background: state.postImage == null
//                             ? null
//                             : Padding(
//                                 padding: const EdgeInsets.all(8.0),
//                                 child: Image.file(
//                                   state.postImage!,
//                                   fit: BoxFit.fill,
//                                 ),
//                               ),
//                       ),
//                     ),
//                     SliverToBoxAdapter(
//                       child: SelectTitleView(formKey: formKey),
//                     ),
//                     SliverToBoxAdapter(
//                       child: Card(
//                         child: Column(
//                           mainAxisSize: MainAxisSize.min,
//                           children: [
//                             Flexible(
//                               child: SuperEditor(
//                                 focusNode: _editorFocusNode,
//                                 documentLayoutKey: _docLayoutKey,
//                                 editor: _docEditor,
//                                 composer: _composer,
//                                 softwareKeyboardHandler:
//                                     _softwareKeyboardHandler,
//                                 gestureMode: DocumentGestureMode.android,
//                                 inputSource: DocumentInputSource.ime,
//                                 androidToolbarBuilder: (_) =>
//                                     AndroidTextEditingFloatingToolbar(
//                                   onCutPressed: () => _docOps.cut(),
//                                   onCopyPressed: () => _docOps.copy(),
//                                   onPastePressed: () => _docOps.paste(),
//                                   onSelectAllPressed: () => _docOps.selectAll(),
//                                 ),
//                                 stylesheet: defaultStylesheet.copyWith(
//                                   documentPadding: const EdgeInsets.all(16),
//                                 ),
//                                 createOverlayControlsClipper: (_) =>
//                                     const KeyboardToolbarClipper(),
//                               ),
//                             ),
//                             MultiListenableBuilder(
//                               listenables: <Listenable>{
//                                 _doc,
//                                 _composer.selectionNotifier,
//                               },
//                               builder: (_) => _buildMountedToolbar(),
//                             ),
//                           ],
//                         ),
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             ],
//           ),
//           floatingActionButton: Padding(
//             padding: const EdgeInsets.only(bottom: 73),
//             child: FloatingActionButton(
//               onPressed: () {
//                 if (formKey.currentState!.validate()) {
//                   // ignore: use_build_context_synchronously
//                   final ed = _docEditor.document;
//                   final markDown = serializeDocumentToMarkdown(ed);
//                   context.read<TextPostCubit>().contentChanged(markDown);
//                   // ignore: use_build_context_synchronously
//                   context.read<TextPostCubit>().submit();
//                 }
//               },
//               child: Text(
//                 'Post',
//                 style: theme.textTheme.headline5,
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }
// }

// MutableDocument _createInitialDocument() {
//   return MutableDocument(
//     nodes: [
//       ParagraphNode(
//         id: DocumentEditor.createNodeId(),
//         text: AttributedText(
//           text: "clear this and Compose here...",
//         ),
//       ),
//     ],
//   );
// }

// Future<void> selectImage(BuildContext context) async {
//   final ImagePicker picker = ImagePicker();
//   final XFile? images = await picker.pickImage(source: ImageSource.gallery);
//   if (images != null) {
//     final File pickedImages = File(images.path);
//     //todo** Do not use BuildContexts across async gaps.
//     // ignore: use_build_context_synchronously
//     context.read<TextPostCubit>().postImageChanged(pickedImages);
//   }
// }

// Future<void> postBook(
//     BuildContext context, GlobalKey<FormState> formKey, String content) async {
//   if (formKey.currentState!.validate()) {
//     // ignore: use_build_context_synchronously
//     context.read<TextPostCubit>().contentChanged(content);
//     // ignore: use_build_context_synchronously
//     context.read<TextPostCubit>().submit();
//   }
// }

// class SelectTitleView extends StatelessWidget {
//   const SelectTitleView({super.key, required this.formKey});
//   final GlobalKey<FormState> formKey;

//   @override
//   Widget build(BuildContext context) {
//     final theme = Theme.of(context);
//     return SizedBox(
//       height: 70,
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Form(
//           key: formKey,
//           child: TextFormField(
//             decoration: InputDecoration(
//               // errorText: 'Insert Text',
//               labelText: 'Title',
//               floatingLabelStyle: Theme.of(context).textTheme.headline2,
//               filled: true,
//               //fillColor: Colors.white,
//               border: const OutlineInputBorder(),
//               fillColor: theme.scaffoldBackgroundColor,
//               labelStyle: Theme.of(context).textTheme.headline2,
//               focusColor: Theme.of(context).colorScheme.secondary,
//             ),
//             validator: (e) {
//               if (e!.isEmpty) {
//                 return 'This Cannot be empty';
//               } else if (e.length <= 8) {
//                 return 'Character can not be less than 8';
//               }
//               return null;
//             },
//             onChanged: (value) =>
//                 context.read<TextPostCubit>().titleChanged(value),
//             keyboardType: TextInputType.text,
//             style: theme.textTheme.headline2,
//           ),
//         ),
//       ),
//     );
//   }
// }

// class KeyboardToolbarClipper extends CustomClipper<Rect> {
//   const KeyboardToolbarClipper();

//   @override
//   Rect getClip(Size size) {
//     return Rect.fromLTWH(0, 0, size.width, size.height - 48);
//   }

//   @override
//   bool shouldReclip(KeyboardToolbarClipper oldClipper) {
//     return false;
//   }
// }
