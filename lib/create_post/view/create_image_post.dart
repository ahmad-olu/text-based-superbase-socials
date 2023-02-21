import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:image_picker/image_picker.dart';

class CreateImagePostPage extends StatelessWidget {
  const CreateImagePostPage({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: const FittedBox(
            child: Text(
              'Create Comics or Image gallery',
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 16.0, bottom: 16.0),
              child: ElevatedButton(
                onPressed: () {},
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
                icon: const Icon(Icons.extension_sharp),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                // if (state.postImages != null)
                //           Container(
                //             decoration:
                //                 const BoxDecoration(shape: BoxShape.circle),
                //             height: 500,
                //             width: double.maxFinite,
                //             child: GridView.builder(
                //               gridDelegate:
                //                   const SliverGridDelegateWithFixedCrossAxisCount(
                //                 crossAxisCount: 3,
                //                 crossAxisSpacing: 4,
                //                 mainAxisSpacing: 4,
                //               ),
                //               itemBuilder: (context, index) {
                //                 return Padding(
                //                   padding: const EdgeInsets.all(2.0),
                //                   child: Image.file(
                //                     fit: BoxFit.cover,
                //                     state.postImages![index]!,
                //                     width: 200,
                //                     height: 250,
                //                   ),
                //                 );
                //               },
                //               itemCount: state.postImages!.length,
                //             ),
                //           )
                //         else
                Card(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Center(
                    child: Icon(
                      Icons.image,
                      size: 300,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                TextButton(
                  onPressed: () async {
                    // ignore: no_leading_underscores_for_local_identifiers
                    final ImagePicker _picker = ImagePicker();
                    // ignore: unnecessary_nullable_for_final_variable_declarations
                    final List<XFile>? images = await _picker.pickMultiImage();
                    if (images != null) {
                      // ignore: unused_local_variable
                      final List<File> pickedImages =
                          images.map((path) => File(path.path)).toList();
                      //if (context.mounted) return;
                      //todo** Do not use BuildContexts across async gaps.
                      // ignore: use_build_context_synchronously
                      //context.read<ComicPostCubit>().postImageChanged(pickedImages);
                    }
                  },
                  style: TextButton.styleFrom(
                      minimumSize: const Size(150, 70),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          side: BorderSide(
                              color: theme.colorScheme.secondary,
                              strokeAlign: 2))),
                  child: const Text('Get Images'),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          TextFormField(
                            autocorrect: false,
                            decoration: const InputDecoration(
                              icon: Icon(Icons.text_fields),
                              labelText: 'Title',
                              border: OutlineInputBorder(),
                              errorMaxLines: 2,

                              //   errorText: state.username.invalid
                              //       ? 'username field error'
                              //       : null,
                            ),
                            keyboardType: TextInputType.text,
                            validator: (text) {
                              if (text!.isEmpty) {
                                return 'Title can not be Empty';
                              } else if (text.length <= 9) {
                                return 'Come on you can be more creative than this. less than 9 characters Seriously';
                              }
                              return null;
                            },
                            onChanged: (value) {},
                            textInputAction: TextInputAction.done,
                          ),
                          const SizedBox(height: 10),
                          TextFormField(
                            autocorrect: false,
                            decoration: const InputDecoration(
                              icon: Icon(Icons.note_alt),
                              labelText: 'Extra Content',
                              border: OutlineInputBorder(),
                              //   errorText: state.username.invalid
                              //       ? 'username field error'
                              //       : null,
                            ),
                            minLines: 1,
                            maxLines: 5,
                            keyboardType: TextInputType.text,
                            onChanged: (value) {},
                            textInputAction: TextInputAction.done,
                          ),
                        ],
                      )),
                ),
                const SizedBox(height: 15),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      //context.read<ComicPostCubit>().submit();
                    }
                  },
                  style: TextButton.styleFrom(
                      minimumSize: const Size(150, 70),
                      shape: const RoundedRectangleBorder()),
                  child: const Text('Submit Post'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
