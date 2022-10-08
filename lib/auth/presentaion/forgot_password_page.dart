import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:geat/auth/application/extra_auth_bloc/extra_auth_bloc.dart';
import 'package:geat/auth/infrastructure/firebase_auth_facade.dart';
import 'package:geat/auth/presentaion/widgets/flat_button_auth.dart';
import 'package:geat/core/enum/enum.dart';
import 'package:geat/core/utilities/password_reset_email_sent_dialog.dart';
import 'package:geat/core/widget/sized_box_widget.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ExtraAuthBloc(context.read<AuthFacade>()),
      child: const ForgotPasswordView(),
    );
  }
}

class ForgotPasswordView extends HookWidget {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final _emailController = useTextEditingController(text: '');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forgot Password'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: BlocConsumer<ExtraAuthBloc, ExtraAuthState>(
            listener: (context, state) {
              if (state.sent) {
                showPasswordResetDialog(context);
              }
            },
            builder: (context, state) {
              return Center(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(28.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FittedBox(
                          child: Text(
                            'Forgot Password',
                            style: theme.textTheme.headline1,
                            textAlign: TextAlign.center,
                            maxLines: 1,
                          ),
                        ),
                        const SizedBoxHeightWidget(
                          type: SizedBoxType.small,
                        ),
                        TextField(
                          keyboardType: TextInputType.emailAddress,
                          autocorrect: false,
                          autofocus: true,
                          controller: _emailController,
                          decoration: const InputDecoration(
                            hintText: 'bob@gmail.com',
                            labelText: 'Email Address',
                          ),
                        ),
                        const SizedBoxHeightWidget(
                          type: SizedBoxType.small,
                        ),
                        if (state.isLoading)
                          const Center(
                            child: CircularProgressIndicator(),
                          )
                        else
                          FlatButtonAuth(
                            theme: theme,
                            text: 'send reset Link',
                            size: const Size(400, 40),
                            onPressed: () async {
                              context.read<ExtraAuthBloc>().add(
                                    ExtraAuthEvent.forgotPassword(
                                      email: _emailController.text,
                                    ),
                                  );
                            },
                          ),
                        const SizedBoxHeightWidget(
                          type: SizedBoxType.small,
                        ),
                        FlatButtonAuth(
                          theme: theme,
                          size: const Size(250, 40),
                          text: '<--- go Back',
                          onPressed: () => context.router.pop(),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
