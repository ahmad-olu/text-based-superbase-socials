import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forgot Password'),
        centerTitle: true,
        backgroundColor: theme.colorScheme.primary,
      ),
      body: SingleChildScrollView(
        child: Center(
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
                      labelText: 'email',
                      errorMaxLines: 2,
                      helperMaxLines: 2,
                      helperText: '''Input you'r email address''',
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
                      'Proceed',
                      style: theme.textTheme.headlineSmall!.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                      maxLines: 1,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: InkWell(
                    onTap: () => showPasswordResetSheet(context, theme),
                    child: FittedBox(
                      child: Text.rich(TextSpan(
                          text: "if the new password sheet doesn't come up ",
                          style: theme.textTheme.headlineSmall,
                          children: <InlineSpan>[
                            TextSpan(
                              text:
                                  "Tap to insert New password and confirmation code",
                              style: theme.textTheme.headlineSmall?.copyWith(
                                  fontWeight: FontWeight.w700,
                                  color: theme.colorScheme.secondary),
                            )
                          ])),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Future showPasswordResetSheet(BuildContext context, ThemeData theme) {
  return showModalBottomSheet(
    context: context,
    builder: (context) {
      return Center(
        child: Column(
          children: [
            const SizedBox(height: 30),
            Text(
              'Fill in the field below',
              style: theme.textTheme.headlineMedium,
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 19),
              child: TextFormField(
                initialValue: '',
                autocorrect: false,
                decoration: InputDecoration(
                  labelText: 'new Password',
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
              padding: const EdgeInsets.symmetric(horizontal: 19),
              child: TextFormField(
                initialValue: '',
                autocorrect: false,
                decoration: InputDecoration(
                  labelText: 'Confirmation code',
                  errorMaxLines: 2,
                  helperMaxLines: 2,
                  helperText: '''Check your email for a 6 digit code''',
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
                  'Confirm',
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
      );
    },
  );
}
