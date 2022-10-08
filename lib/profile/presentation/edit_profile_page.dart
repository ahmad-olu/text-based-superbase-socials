import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geat/core/infrastructure/storage_repository.dart';
import 'package:geat/profile/application/edit_profile_cubit/edit_profile_cubit.dart';
import 'package:geat/profile/application/profile_bloc/profile_bloc.dart';
import 'package:geat/profile/domain/user_model.dart';
import 'package:geat/profile/infrastructure/user_repository.dart';
import 'package:geat/profile/presentation/widgets/user_profile_image.dart';
import 'package:image_picker/image_picker.dart';

class EditProfilePage extends StatelessWidget implements AutoRouteWrapper {
  const EditProfilePage({super.key, required this.profileBloc});
  final ProfileBloc profileBloc;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => EditProfileCubit(
        context.read<ProfileBloc>(),
        context.read<UserRepository>(),
        context.read<StorageRepository>(),
      ),
      child: EditProfileView(user: context.read<ProfileBloc>().state.user),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider.value(
      value: profileBloc,
      child: this,
    );
  }
}

class EditProfileView extends StatelessWidget {
  const EditProfileView({super.key, required this.user});
  final User user;
  InputDecoration inputDecoration(String labelText) => InputDecoration(
        labelText: labelText,
        border: const OutlineInputBorder(),
      );
  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          title: Text(
            'Edit Profile',
            style: Theme.of(context).textTheme.headline1,
          ),
          // leading: IconButton(
          //   onPressed: () {},
          //   icon: const Icon(Icons.arrow_back_outlined),
          // ),
        ),
        body: BlocConsumer<EditProfileCubit, EditProfileState>(
          listener: (context, state) {
            if (state.status == EditProfileStatus.success) {
              context.router.pop();
            } else if (state.status == EditProfileStatus.error) {}
          },
          builder: (context, state) {
            return SingleChildScrollView(
              child: SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (state.status == EditProfileStatus.submitting)
                      const LinearProgressIndicator(),
                    GestureDetector(
                      onTap: () async {
                        final ImagePicker picker = ImagePicker();
                        final XFile? images =
                            await picker.pickImage(source: ImageSource.gallery);
                        if (images != null) {
                          final File pickedImages = File(images.path);
                          //todo** Do not use BuildContexts across async gaps.
                          // ignore: use_build_context_synchronously
                          context
                              .read<EditProfileCubit>()
                              .profileImageChanged(pickedImages);
                        }
                      },
                      child: UserProfileImageWidget(
                        radius: 80,
                        profileImageUrl: user.profileImageUrl ?? '',
                        profileImage: state.profileImage,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Form(
                        key: formKey,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            TextFormField(
                              initialValue: state.fullname,
                              decoration: const InputDecoration(
                                icon: Icon(Icons.person),
                                labelText: 'Full name',
                                helperText: 'bla bla bla',
                              ),
                              onChanged: (value) => context
                                  .read<EditProfileCubit>()
                                  .fullNameChanged(value),
                              textInputAction: TextInputAction.next,
                              keyboardType: TextInputType.name,
                            ),
                            const SizedBox(height: 15),
                            TextFormField(
                              onChanged: (value) => context
                                  .read<EditProfileCubit>()
                                  .bioChanged(value),
                              initialValue: user.bio,
                              decoration: const InputDecoration(
                                icon: Icon(Icons.note),
                                labelText: 'Bio',
                                helperText: '...',
                              ),
                              textInputAction: TextInputAction.newline,
                              maxLength: 300,
                              keyboardType: TextInputType.multiline,
                              maxLines: 7,
                              minLines: 1,
                            ),
                            const SizedBox(height: 15),
                            TextFormField(
                              initialValue: user.website,
                              onChanged: (value) => context
                                  .read<EditProfileCubit>()
                                  .websiteChanged(value),
                              decoration: const InputDecoration(
                                icon: Icon(Icons.web),
                                labelText: 'website',
                                helperText: 'bob.com',
                              ),
                              textInputAction: TextInputAction.next,
                              keyboardType: TextInputType.url,
                            ),
                            const SizedBox(height: 15),
                            //if (state.bio.invalid && state.website.invalid)
                            ElevatedButton(
                              onPressed: () {
                                context.read<EditProfileCubit>().submit();
                              },
                              child: const Text('Update'),
                            ),
                          ],
                        ),
                      ),
                    )
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
