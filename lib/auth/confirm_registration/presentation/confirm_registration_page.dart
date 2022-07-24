import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:geat/auth/auth.dart';
import 'package:geat/auth/core/core.dart';
import 'package:geat/injection.dart';

class ConfirmRegistrationPage extends StatelessWidget {
  const ConfirmRegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ConfirmRegFormCubit>(),
      child: const ConfirmRegistrationView(),
    );
  }
}

class ConfirmRegistrationView extends StatelessWidget {
  const ConfirmRegistrationView({super.key});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    final theme = Theme.of(context);
    return BlocConsumer<ConfirmRegFormCubit, ConfirmRegFormState>(
      listener: (context, state) {
        if (state.status == FormzStatus.submissionFailure) {
          showFlash(
            context: context,
            duration: const Duration(seconds: 4),
            builder: (context, controller) {
              return Flash.bar(
                controller: controller,
                backgroundGradient: const LinearGradient(
                  colors: [Colors.yellow, Colors.amber, Colors.teal],
                ),
                //position: FlashPosition.bottom,
                horizontalDismissDirection:
                    HorizontalDismissDirection.startToEnd,
                margin: const EdgeInsets.all(8),
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                forwardAnimationCurve: Curves.easeInOut,
                reverseAnimationCurve: Curves.easeInCubic,
                child: FlashBar(
                  showProgressIndicator: true,
                  content: const Text(
                    //TODO! flashbar texts
                    '',
                  ),
                ),
              );
            },
          );
        } else if (state.status == FormzStatus.submissionSuccess) {
          context.read<AuthBloc>().add(const AuthEvent.authCheckRequested());
        }
      },
      builder: (context, state) {
        return Scaffold(
          body: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(80.6),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Enter Confirmation code below',
                      style: theme.textTheme.headline1,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 13),
                    PinCodeWidget(
                      theme: theme,
                      onChanged: (value) => context
                          .read<ConfirmRegFormCubit>()
                          .confirmationCodeChanged(value),
                      confirmationCode: state.confirmationCode,
                    ),
                    const SizedBox(height: 13),
                    FlatButtonAuth(
                      onPressed: () {},
                      text: 'Tap to resend <--',
                      theme: theme,
                    ),
                    const SizedBox(height: 13),
                    FlatButtonAuth(
                      onPressed: () {},
                      text: 'Confirm -->',
                      theme: theme,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
