import 'package:flutter/material.dart';
import 'package:geat/profile/presentation/widgets/user_profile_image.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const EditProfileView();
  }
}

class EditProfileView extends StatelessWidget {
  InputDecoration inputDecoration(String labelText) => InputDecoration(
        labelText: labelText,
        border: const OutlineInputBorder(),
      );
  const EditProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Text(
          'Edit Profile',
          style: Theme.of(context).textTheme.headline1,
        ),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_outlined),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {},
                child: const UserProfileImageWidget(
                  radius: 80,
                  profileImageUrl: '',
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Form(
                  key: _formKey,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          icon: Icon(Icons.email),
                          labelText: 'Full name',
                          helperText: 'bla bla bla',
                          // errorText: state.email.invalid
                          //     ? 'Please enter a valid email address'
                          //     : null,
                        ),

                        // validator:
                        //     FormBuilderValidators.maxLength(context, 8),
                        onChanged: (value) {},
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.name,
                      ),
                      const SizedBox(height: 15),
                      TextFormField(
                        // validator:
                        //     FormBuilderValidators.maxLength(context, 8),
                        onChanged: (value) {},
                        decoration: const InputDecoration(
                          icon: Icon(Icons.email),
                          labelText: 'Bio',
                          helperText: '...',
                          // errorText: state.email.invalid
                          //     ? 'Please enter a valid email address'
                          //     : null,
                        ),
                        textInputAction: TextInputAction.done,
                        maxLength: 300,
                        keyboardType: TextInputType.multiline,
                        maxLines: 7,
                        minLines: 1,
                      ),
                      const SizedBox(height: 15),
                      TextFormField(
                        // validator:
                        //     FormBuilderValidators.maxLength(context, 8),
                        onChanged: (value) {},
                        decoration: const InputDecoration(
                          icon: Icon(Icons.email),
                          labelText: 'website',
                          helperText: 'bob.com',
                          // errorText: state.email.invalid
                          //     ? 'Please enter a valid email address'
                          //     : null,
                        ),
                        textInputAction: TextInputAction.done,
                        keyboardType: TextInputType.multiline,
                      ),
                      const SizedBox(height: 15),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('Update'),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
