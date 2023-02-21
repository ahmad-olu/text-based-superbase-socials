import 'package:flutter/material.dart';

class PasswordUpdatePage extends StatelessWidget {
  const PasswordUpdatePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Password Change'),
        centerTitle: true,
        backgroundColor: theme.colorScheme.primary,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 19),
                child: TextFormField(
                  initialValue: '',
                  autocorrect: false,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    errorMaxLines: 2,
                    helperMaxLines: 2,
                    helperText:
                        '''Password should be more than 8 character with uppercase lowercase and integer values''',
                    //errorText: _passwordError(context, password),
                    filled: false,
                    fillColor: theme.scaffoldBackgroundColor,
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: theme.primaryColor,
                      width: 3,
                    )),
                  ),
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  textInputAction: TextInputAction.done,
                  onChanged: (value) {},
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: ElevatedButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    minimumSize: const Size(280, 50),
                    //maximumSize: const Size(350, 50),
                    side: BorderSide(
                      color: theme.colorScheme.secondary,
                    ),
                    //fixedSize: const Size(280, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Text(
                    'Change Password',
                    style: theme.textTheme.headlineSmall!.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                    maxLines: 1,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
