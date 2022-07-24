import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_quill/flutter_quill.dart' as quill;
import 'package:geat/feeds/presentation/widgets/readers_page.dart';
import 'package:markdown_quill/markdown_quill.dart';

class EditorsPage extends StatelessWidget {
  const EditorsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const EditorsView();
  }
}

quill.QuillController _controller = quill.QuillController.basic();

class EditorsView extends StatelessWidget {
  const EditorsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: quill.QuillToolbar.basic(
              controller: _controller,
              dialogTheme: quill.QuillDialogTheme(
                inputTextStyle: theme.textTheme.headline2,
              ),
              iconTheme: quill.QuillIconTheme(
                iconSelectedFillColor: theme.colorScheme.primary,
                borderRadius: 7,
              ),
              showCameraButton: false,
              showImageButton: false,
              showLink: false,
              showFontSize: false,
              showVideoButton: false,
              showColorButton: false,
              showBackgroundColorButton: false,
              showAlignmentButtons: true,
              showClearFormat: false,
              showListCheck: false,
              showIndent: false,
              showUnderLineButton: false,
              showLeftAlignment: false,
              showRightAlignment: false,
              showCenterAlignment: false,
              showJustifyAlignment: false,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 8.0, left: 8.0, top: 3),
                    child: ElevatedButton(
                      onPressed: () {
                        final delta = _controller.document.toDelta();
                        final deltaData = DeltaToMarkdown();
                        final markDown = deltaData.convert(delta);
                        if (!_controller.document.isEmpty()) {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) =>
                                  TransferText(markDown: markDown),
                            ),
                          );
                        }
                      },
                      child: Text(
                        'Post',
                        style: theme.textTheme.headline2,
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 8.0, left: 8.0, top: 3),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Add Image',
                        style: theme.textTheme.headline2,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Container(
                  height: 83,
                  width: 73,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(13)),
                  ),
                  child: Icon(
                    Icons.image_outlined,
                    size: 25,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              )
            ],
          ),
          const Divider(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: theme.colorScheme.secondary,
                      offset: const Offset(5.0, 5.0),
                      blurRadius: 10,
                      spreadRadius: 2,
                    ),
                    const BoxShadow(
                      color: Colors.white,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Form(
                        key: _formKey,
                        child: TextFormField(
                          decoration: InputDecoration(
                            // errorText: 'Insert Text',
                            labelText: 'Title',
                            floatingLabelStyle:
                                Theme.of(context).textTheme.headline2,
                            filled: true,
                            //fillColor: Colors.white,
                            border: const OutlineInputBorder(),
                            fillColor: theme.scaffoldBackgroundColor,
                            labelStyle: Theme.of(context).textTheme.headline2,
                            focusColor: Theme.of(context).colorScheme.secondary,
                          ),
                          keyboardType: TextInputType.text,
                          style: theme.textTheme.headline2,
                        ),
                      ),
                    ),
                    const SizedBox(height: 3),
                    const Divider(),
                    Expanded(
                      child: quill.QuillEditor.basic(
                        controller: _controller,
                        readOnly: false,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
