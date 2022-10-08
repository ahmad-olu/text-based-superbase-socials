import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geat/auth/application/auth_bloc/auth_bloc.dart';
import 'package:geat/core/domain/geat_failure.dart';
import 'package:geat/core/infrastructure/storage_repository.dart';
import 'package:geat/core/utilities/generic_show_snack_bar.dart';
import 'package:geat/post/application/comic_post_cubit/comic_post_cubit.dart';
import 'package:geat/post/infrastructure/post_repository.dart';
import 'package:geat/post/presentaion/widget/comic_image_button.dart';

class ComicPostPage extends StatelessWidget {
  const ComicPostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ComicPostCubit(
        context.read<PostRepository>(),
        context.read<AuthBloc>(),
        context.read<StorageRepository>(),
      ),
      child: const ComicPostView(),
    );
  }
}

class ComicPostView extends StatelessWidget {
  const ComicPostView({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Create Comics or Image gallery',
          ),
          backgroundColor: theme.scaffoldBackgroundColor.withOpacity(0.5),
        ),
        body: BlocConsumer<ComicPostCubit, ComicPostState>(
          // listenWhen: (previous, current) =>
          //     previous.failure is NoImageSelectedException ,
          listener: (context, state) {
            if (state.status == ComicPostStatus.submitted) {
              _formKey.currentState?.reset();
              context.read<ComicPostCubit>().reset();
            }
            if (state.failure is NoImageSelectedException) {
              showGenericSnackBar(
                context: context,
                title: 'No Image Selected',
                content: 'Please Select an Image to Continue',
              );
            }
          },
          builder: (context, state) {
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.center,
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
                                    fit: BoxFit.cover,
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
                          child: ComicImageButton(
                            context: context,
                            state: state,
                          ),
                        )
                      ],
                    ),
                    if (state.status == ComicPostStatus.submitting)
                      const LinearProgressIndicator(),
                    const SizedBox(height: 15),
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
                                onChanged: (value) => context
                                    .read<ComicPostCubit>()
                                    .titleChanged(value),
                                textInputAction: TextInputAction.done,
                              ),
                              const SizedBox(height: 5),
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
                                onChanged: (value) => context
                                    .read<ComicPostCubit>()
                                    .extrasContentChanged(value),
                                textInputAction: TextInputAction.done,
                              ),
                            ],
                          )),
                    ),
                    const SizedBox(height: 15),
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          context.read<ComicPostCubit>().submit();
                        }
                      },
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
