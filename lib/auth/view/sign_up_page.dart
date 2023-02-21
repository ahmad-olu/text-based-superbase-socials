import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:parallax_rain/parallax_rain.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: ParallaxRain(
            dropColors: [
              Colors.red,
              Colors.green,
              Colors.blue,
              Colors.yellow,
              Colors.brown,
              Colors.blueGrey,
              theme.scaffoldBackgroundColor,
              theme.primaryColor,
              theme.colorScheme.secondary,
            ],
            dropFallSpeed: 10,
            child: Padding(
              padding: const EdgeInsets.only(top: 50, left: 15),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: FittedBox(
                      child: Text(
                        'Sign Up to enjoy story telling with Geat.',
                        style: theme.textTheme.headlineMedium?.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Divider(
                      thickness: 3,
                      height: 20,
                      color: theme.colorScheme.secondary),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 19),
                    child: TextFormField(
                      autocorrect: false,
                      decoration: InputDecoration(
                        labelText: 'Username',
                        // helperText:
                        //     canSubmit ? '${usernameInput.value} sounds just Fine' : null,
                        helperMaxLines: 1,
                        //errorText: _usernameError(context, usernameInput),
                        // suffix: isCheckingUsername
                        //     ? ConstrainedBox(
                        //         constraints: BoxConstraints.tight(const Size(15, 15)),
                        //         child: const CircularProgressIndicator(strokeWidth: 3),
                        //       )
                        //     : null,
                        filled: false,
                        fillColor: theme.scaffoldBackgroundColor,
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: theme.primaryColor,
                          width: 3,
                        )),
                      ),
                      keyboardType: TextInputType.text,
                      onChanged: (value) {},
                      textInputAction: TextInputAction.next,
                    ),
                  ),
                  // const SizedBox(height: 15),
                  // Padding(
                  //   padding: const EdgeInsets.symmetric(horizontal: 12),
                  //   child: ElevatedButton(
                  //     onPressed: () {},
                  //     style: TextButton.styleFrom(
                  //       minimumSize: const Size(280, 50),
                  //       //maximumSize: const Size(350, 50),
                  //       side: BorderSide(
                  //         color: theme.colorScheme.secondary,
                  //       ),
                  //       //fixedSize: const Size(280, 50),
                  //       shape: RoundedRectangleBorder(
                  //         borderRadius: BorderRadius.circular(15),
                  //       ),
                  //     ),
                  //     child: Text(
                  //       'Confirm & Proceed',
                  //       style: theme.textTheme.headlineSmall!.copyWith(
                  //         fontWeight: FontWeight.w700,
                  //       ),
                  //       maxLines: 1,
                  //       textAlign: TextAlign.center,
                  //     ),
                  //   ),
                  // ),
                  // Divider(
                  //     thickness: 3,
                  //     height: 20,
                  //     color: theme.colorScheme.secondary),
                  const SizedBox(height: 25),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 19),
                    child: TextFormField(
                      initialValue: '',
                      decoration: InputDecoration(
                        labelText: 'E-Mail',
                        helperText: 'valid email ----=> bob@gmail.com',
                        //errorText: _emailError(context, email),
                        errorMaxLines: 2,
                        filled: false,
                        fillColor: theme.scaffoldBackgroundColor,
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: theme.primaryColor,
                          width: 3,
                        )),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      onChanged: (value) {},
                    ),
                  ),
                  const SizedBox(height: 25),
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
                            '''Password should be at least 8 characters with at least one letter and number''',
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
                        'SIGN UP',
                        style: theme.textTheme.headlineSmall!.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                        maxLines: 1,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an account? ",
                          style: theme.textTheme.headlineSmall,
                        ),
                        TextButton(
                          onPressed: () => AutoRouter.of(context).pop(),
                          style: TextButton.styleFrom(
                            side: BorderSide(
                              color: theme.colorScheme.secondary,
                            ),
                            minimumSize: const Size(80, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          child: FittedBox(
                            child: Text(
                              'Sign In',
                              style: theme.textTheme.headlineSmall?.copyWith(
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
                  const SizedBox(height: 25),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 19),
                        child: TextFormField(
                          initialValue: '',
                          autocorrect: false,
                          decoration: InputDecoration(
                            labelText: 'Confirmation Code',
                            errorMaxLines: 2,
                            helperMaxLines: 2,
                            // helperText:
                            //     '''Password should be at least 8 characters with at least one letter and number''',
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
                            'Confirm Code',
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
