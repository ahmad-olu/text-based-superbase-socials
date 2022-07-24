import 'package:flutter/material.dart';
import 'package:geat/auth/core/core.dart';
import 'package:geat/core/widgets/widget.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ForgotPasswordView();
  }
}

//todo!! create the forgot password bloc
class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: Center(
        child: Container(
          width: 450,
          height: 210,
          padding: const EdgeInsets.only(bottom: 25),
          decoration: BoxDecoration(
            color: theme.scaffoldBackgroundColor,
            borderRadius: const BorderRadius.all(Radius.circular(25.4)),
          ),
          child: Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: TextFormField(
                    autocorrect: false,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.person),
                      labelText: 'username',

                      //Todo!! add username Form Here
                    ),
                    keyboardType: TextInputType.text,
                    onChanged: (value) {},
                    textInputAction: TextInputAction.next,
                  ),
                ),
                const SizedBox(height: 18),
                FlatButtonAuth(
                  theme: theme,
                  text: 'Reset Password -->',
                  size: const Size(350, 50),
                  onPressed: () {
                    showModalBottomSheet(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(30),
                        ),
                      ),
                      context: context,
                      builder: (context) => Center(
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextFormField(
                                autocorrect: false,
                                decoration: const InputDecoration(
                                  icon: Icon(Icons.person),
                                  labelText: 'username',
                                ),
                                keyboardType: TextInputType.text,
                                onChanged: (value) {},
                                textInputAction: TextInputAction.next,
                              ),
                              const GlobalSizedBox(),
                              TextFormField(
                                autocorrect: false,
                                decoration: const InputDecoration(
                                  icon: Icon(Icons.person),
                                  labelText: 'new password',
                                ),
                                keyboardType: TextInputType.text,
                                onChanged: (value) {},
                                textInputAction: TextInputAction.next,
                              ),
                              const GlobalSizedBox(),
                              TextFormField(
                                autocorrect: false,
                                decoration: const InputDecoration(
                                  icon: Icon(Icons.person),
                                  labelText: 'confirmation code',
                                ),
                                keyboardType: TextInputType.number,
                                onChanged: (value) {},
                                textInputAction: TextInputAction.next,
                              ),
                              const GlobalSizedBox(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FlatButtonAuth(
                                    theme: theme,
                                    text: 'Confirm -->',
                                    size: const Size(150, 50),
                                    onPressed: () {},
                                  ),
                                  FlatButtonAuth(
                                    theme: theme,
                                    text: 'Pop',
                                    size: const Size(150, 50),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
