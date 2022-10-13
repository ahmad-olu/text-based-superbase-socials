import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geat/core/helper/mark_down_converter.dart';
import 'package:geat/post/domain/post_model.dart';
import 'package:geat/reImagined/application/bloc/re_imagined_bloc.dart';
import 'package:super_editor/super_editor.dart';

class ReImaginedPage extends StatelessWidget {
  const ReImaginedPage({
    super.key,
    required this.post,
    required this.reImaginedBloc,
  });
  final Post post;
  final ReImaginedBloc reImaginedBloc;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: reImaginedBloc,
      child: const ReImaginedView(),
    );
  }
}

class ReImaginedView extends StatefulWidget {
  const ReImaginedView({super.key});

  @override
  State<ReImaginedView> createState() => _ReImaginedViewState();
}

class _ReImaginedViewState extends State<ReImaginedView> {
  late ScrollController _scrollController;
  final GlobalKey _docLayoutKey = GlobalKey();
  String? contents;

  late Document _doc;
  late DocumentEditor _docEditor;
  late DocumentComposer _composer;
  late CommonEditorOperations _docOps;
  late SoftwareKeyboardHandler _softwareKeyboardHandler;

  FocusNode? _editorFocusNode;

  final _darkBackground = const Color(0xFF222222);
  final _lightBackground = Colors.white;
  bool _isLight = true;

  void _emptyDoc() {
    if (_doc.nodes.isEmpty) {
      _doc = MutableDocument(
        nodes: [
          ParagraphNode(
            id: DocumentEditor.createNodeId(),
            text: AttributedText(
              text: "",
            ),
          ),
        ],
      );
    }
  }

  void _configureImeActionButton() {
    if (_composer.selection == null || !_composer.selection!.isCollapsed) {
      _composer.imeConfiguration.value =
          _composer.imeConfiguration.value.copyWith(
        keyboardActionButton: TextInputAction.newline,
      );
      return;
    }

    final selectedNode = _doc.getNodeById(_composer.selection!.extent.nodeId);
    if (selectedNode is ListItemNode) {
      _composer.imeConfiguration.value =
          _composer.imeConfiguration.value.copyWith(
        keyboardActionButton: TextInputAction.done,
      );
      return;
    }

    _composer.imeConfiguration.value =
        _composer.imeConfiguration.value.copyWith(
      keyboardActionButton: TextInputAction.newline,
    );
  }

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _doc = _createInitialDocument();
    _docEditor = DocumentEditor(document: _doc as MutableDocument);
    _composer = DocumentComposer()
      ..addListener(_configureImeActionButton)
      ..addListener(_emptyDoc);
    _docOps = CommonEditorOperations(
      editor: _docEditor,
      composer: _composer,
      documentLayoutResolver: () =>
          _docLayoutKey.currentState as DocumentLayout,
    );
    _softwareKeyboardHandler = SoftwareKeyboardHandler(
      editor: _docEditor,
      composer: _composer,
      commonOps: _docOps,
    );
    _editorFocusNode = FocusNode();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _editorFocusNode!.dispose();
    _composer.dispose();
    super.dispose();
  }

  Widget _buildMountedToolbar() {
    final selection = _composer.selection;

    if (selection == null) {
      return const SizedBox();
    }

    return KeyboardEditingToolbar(
      document: _doc,
      composer: _composer,
      commonOps: CommonEditorOperations(
        editor: _docEditor,
        composer: _composer,
        documentLayoutResolver: () =>
            _docLayoutKey.currentState as DocumentLayout,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BlocConsumer<ReImaginedBloc, ReImaginedState>(
      listener: (context, state) {
        context.read<ReImaginedBloc>().add(const ReImaginedEvent.postReset());
        _docEditor.document.nodes.clear();
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              'ReImagined',
              style: theme.textTheme.headline3,
            ),
          ),
          body: Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(
                  child: SuperEditor(
                    focusNode: _editorFocusNode,
                    documentLayoutKey: _docLayoutKey,
                    editor: _docEditor,
                    composer: _composer,
                    softwareKeyboardHandler: _softwareKeyboardHandler,
                    gestureMode: DocumentGestureMode.android,
                    inputSource: DocumentInputSource.ime,
                    androidToolbarBuilder: (_) =>
                        AndroidTextEditingFloatingToolbar(
                      onCutPressed: () => _docOps.cut(),
                      onCopyPressed: () => _docOps.copy(),
                      onPastePressed: () => _docOps.paste(),
                      onSelectAllPressed: () => _docOps.selectAll(),
                    ),
                    stylesheet: defaultStylesheet.copyWith(
                      documentPadding: const EdgeInsets.all(16),
                    ),
                    createOverlayControlsClipper: (_) =>
                        const KeyboardToolbarClipper(),
                  ),
                ),
                MultiListenableBuilder(
                  listenables: <Listenable>{
                    _doc,
                    _composer.selectionNotifier,
                  },
                  builder: (_) => _buildMountedToolbar(),
                ),
              ],
            ),
          ),
          floatingActionButton: Padding(
            padding: const EdgeInsets.only(bottom: 73),
            child: FloatingActionButton(
              onPressed: () {
                final content = _docEditor.document.nodes.isNotEmpty;
                if (content) {
                  // ignore: use_build_context_synchronously
                  final ed = _docEditor.document;
                  final markDown = serializeDocumentToMarkdown(ed);
                  context
                      .read<ReImaginedBloc>()
                      .add(ReImaginedEvent.postReImagined(content: markDown));
                  // ignore: use_build_context_synchronously
                  ed.dispose();
                  AutoRouter.of(context).pop();
                }
              },
              child: Text(
                'Post',
                style: theme.textTheme.headline5,
              ),
            ),
          ),
        );
      },
    );
  }
}

MutableDocument _createInitialDocument() {
  return MutableDocument(
    nodes: [
      ParagraphNode(
        id: DocumentEditor.createNodeId(),
        text: AttributedText(
          text: "clear this and Compose here...",
        ),
      ),
    ],
  );
}

class KeyboardToolbarClipper extends CustomClipper<Rect> {
  const KeyboardToolbarClipper();

  @override
  Rect getClip(Size size) {
    return Rect.fromLTWH(0, 0, size.width, size.height - 48);
  }

  @override
  bool shouldReclip(KeyboardToolbarClipper oldClipper) {
    return false;
  }
}
