import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_limited_checkbox/flutter_limited_checkbox.dart';
import 'package:geat/auth/application/auth_bloc/auth_bloc.dart';
import 'package:geat/core/helper/mark_down_converter.dart';
import 'package:geat/core/infrastructure/storage_repository.dart';
import 'package:geat/post/application/text_post_cubit/text_post_cubit.dart';
import 'package:geat/post/infrastructure/post_repository.dart';
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
    final formKey = GlobalKey<FormState>();
    final theme = Theme.of(context);

    return BlocConsumer<TextPostCubit, TextPostState>(
      listener: (context, state) {
        if (state.status == TextPostStatus.submitted) {
          formKey.currentState?.reset();
          context.read<TextPostCubit>().reset();
          _docEditor.document.nodes.clear();
        }
      },
      builder: (context, state) {
        return Scaffold(
          body: Stack(
            children: [
              Positioned.fill(
                child: CustomScrollView(
                  controller: _scrollController,
                  slivers: [
                    SliverAppBar(
                      title: Text(
                        'Editor',
                        style: theme.textTheme.headline1,
                        textAlign: TextAlign.center,
                      ),
                      actions: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(2, 8, 19, 2),
                          child: ElevatedButton.icon(
                            onPressed: () => selectImage(context),
                            style: TextButton.styleFrom(
                              backgroundColor: state.postImage == null
                                  ? theme.colorScheme.secondary.withOpacity(0.3)
                                  : Colors.transparent,
                            ),
                            icon: const Icon(Icons.camera_outlined),
                            label: Text(
                              'add book Image',
                              style: theme.textTheme.headline5,
                            ),
                          ),
                        ),
                      ],
                      expandedHeight: 200.0,
                      floating: true,
                      leading: IconButton(
                        onPressed: () => AutoRouter.of(context).pop(),
                        icon: const Icon(Icons.arrow_back_outlined),
                      ),
                      flexibleSpace: FlexibleSpaceBar(
                        background: state.postImage == null
                            ? null
                            : Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.file(
                                  state.postImage!,
                                  fit: BoxFit.fill,
                                ),
                              ),
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: SelectTitleView(formKey: formKey),
                    ),
                    SliverToBoxAdapter(
                      child: Card(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Flexible(
                              child: SuperEditor(
                                focusNode: _editorFocusNode,
                                documentLayoutKey: _docLayoutKey,
                                editor: _docEditor,
                                composer: _composer,
                                softwareKeyboardHandler:
                                    _softwareKeyboardHandler,
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
                    )
                  ],
                ),
              ),
            ],
          ),
          floatingActionButton: Padding(
            padding: const EdgeInsets.only(bottom: 73),
            child: FloatingActionButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  // ignore: use_build_context_synchronously
                  final ed = _docEditor.document;
                  final markDown = serializeDocumentToMarkdown(ed);
                  context.read<TextPostCubit>().contentChanged(markDown);
                  // ignore: use_build_context_synchronously
                  context.read<TextPostCubit>().submit();
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

Future<void> selectImage(BuildContext context) async {
  final ImagePicker picker = ImagePicker();
  final XFile? images = await picker.pickImage(source: ImageSource.gallery);
  if (images != null) {
    final File pickedImages = File(images.path);
    //todo** Do not use BuildContexts across async gaps.
    // ignore: use_build_context_synchronously
    context.read<TextPostCubit>().postImageChanged(pickedImages);
  }
}

Future<void> postBook(
    BuildContext context, GlobalKey<FormState> formKey, String content) async {
  if (formKey.currentState!.validate()) {
    // ignore: use_build_context_synchronously
    context.read<TextPostCubit>().contentChanged(content);
    // ignore: use_build_context_synchronously
    context.read<TextPostCubit>().submit();
  }
}

class SelectTitleView extends StatelessWidget {
  const SelectTitleView({super.key, required this.formKey});
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      height: 70,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: formKey,
          child: TextFormField(
            decoration: InputDecoration(
              // errorText: 'Insert Text',
              labelText: 'Title',
              floatingLabelStyle: Theme.of(context).textTheme.headline2,
              filled: true,
              //fillColor: Colors.white,
              border: const OutlineInputBorder(),
              fillColor: theme.scaffoldBackgroundColor,
              labelStyle: Theme.of(context).textTheme.headline2,
              focusColor: Theme.of(context).colorScheme.secondary,
            ),
            validator: (e) {
              if (e!.isEmpty) {
                return 'This Cannot be empty';
              } else if (e.length <= 8) {
                return 'Character can not be less than 8';
              }
              return null;
            },
            onChanged: (value) =>
                context.read<TextPostCubit>().titleChanged(value),
            keyboardType: TextInputType.text,
            style: theme.textTheme.headline2,
          ),
        ),
      ),
    );
  }
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
