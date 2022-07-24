import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geat/editor/application/create_text_post_cubit/create_text_post_cubit.dart';
import 'package:geat/injection.dart';
import 'package:geat/post/application/cubit/picture_post_cubit.dart';

import 'package:geat/post/presentation/widget/select_image_button.dart';

class PostPage extends StatelessWidget {
  const PostPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CreatePicturePostCubit>(),
      child: const PostView(),
    );
  }
}

class PostView extends StatelessWidget {
  const PostView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(title: const Text('Create Comics or Image gallery')),
        body: BlocConsumer<CreatePicturePostCubit, CreatePicturePostState>(
          listener: (context, state) {
            if (state.status == CreateTextPostStatus.submitted) {
              _formKey.currentState?.reset();
              context.read<CreatePicturePostCubit>().reset();
            }
          },
          builder: (context, state) {
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        if (state.postImages != null)
                          Container(
                            decoration:
                                const BoxDecoration(shape: BoxShape.circle),
                            height: 500,
                            width: double.maxFinite,
                            child: GridView.builder(
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                crossAxisSpacing: 4,
                                mainAxisSpacing: 4,
                              ),
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Image.file(
                                    fit: BoxFit.fill,
                                    state.postImages![index]!,
                                    width: 200,
                                    height: 250,
                                  ),
                                );
                              },
                              itemCount: state.postImages!.length,
                            ),
                          )
                        else
                          Icon(
                            Icons.image,
                            size: 300,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        Positioned(
                          bottom: 22,
                          right: 100,
                          left: 100,
                          child: SelectImageButton(
                            context: context,
                            state: state,
                          ),
                        )
                      ],
                    ),
                    if (state.status == CreatePicturePostStatus.submitting)
                      const LinearProgressIndicator(),
                    const SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Form(
                        key: _formKey,
                        child: TextFormField(
                          autocorrect: false,
                          decoration: const InputDecoration(
                            icon: Icon(Icons.person),
                            labelText: 'Title',
                            border: OutlineInputBorder(),
                            //   errorText: state.username.invalid
                            //       ? 'username field error'
                            //       : null,
                          ),
                          keyboardType: TextInputType.text,
                          onChanged: (value) => context
                              .read<CreatePicturePostCubit>()
                              .titleChanged(value),
                          textInputAction: TextInputAction.done,
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    ElevatedButton(
                      onPressed: () =>
                          context.read<CreatePicturePostCubit>().submit(),
                      child: const Text('Submit Post'),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
