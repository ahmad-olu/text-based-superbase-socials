import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:geat/app/router/app_router.gr.dart';
import 'package:parallax_rain/parallax_rain.dart';

class WalkInPage extends StatelessWidget {
  const WalkInPage({super.key});

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
                        'Walk In to connect.',
                        style: theme.textTheme.headlineMedium?.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  const SizedBox(height: 350, child: Placeholder()),
                  Divider(
                      thickness: 3,
                      height: 20,
                      color: theme.colorScheme.secondary),
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
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: InkWell(
                      onTap: () => AutoRouter.of(context)
                          .push(const ForgotPasswordRoute()),
                      child: FittedBox(
                        child: Text.rich(TextSpan(
                            text: "Forgot you'r password? ",
                            style: theme.textTheme.headlineSmall,
                            children: <InlineSpan>[
                              TextSpan(
                                text: "Tap to create New password",
                                style: theme.textTheme.headlineSmall?.copyWith(
                                    fontWeight: FontWeight.w700,
                                    color: theme.colorScheme.secondary),
                              )
                            ])),
                      ),
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
                        'WALK IN',
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
                          "Don't have a account? ",
                          style: theme.textTheme.headlineSmall,
                        ),
                        TextButton(
                          onPressed: () =>
                              AutoRouter.of(context).push(const SignUpRoute()),
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
                              'Sign Up',
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
