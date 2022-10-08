import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:geat/auth/application/registration_cubit/registration_cubit.dart';
import 'package:geat/auth/application/username_check_bloc/username_check_bloc.dart';
import 'package:geat/auth/domain/auth_failure.dart';
import 'package:geat/auth/infrastructure/firebase_auth_facade.dart';
import 'package:geat/auth/presentaion/widgets/email_text_form_field.dart';
import 'package:geat/auth/presentaion/widgets/flat_button_auth.dart';
import 'package:geat/auth/presentaion/widgets/password_text_form_field.dart';
import 'package:geat/core/enum/enum.dart';
import 'package:geat/core/routes/app_router.gr.dart';
import 'package:geat/core/utilities/generic_show_snack_bar.dart';
import 'package:geat/core/widget/sized_box_widget.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key, required this.username});
  final String username;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegistrationCubit(
        context.read<AuthFacade>(),
        username,
      ),
      child: const RegistrationView(),
    );
  }
}

class RegistrationView extends StatelessWidget {
  const RegistrationView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.of(context);
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: SizedBox(
            height: size.size.height / 1.4,
            width: size.size.width / 1.2,
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(28.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FittedBox(
                      child: Text(
                        'Registration',
                        style: theme.textTheme.headline1,
                        textAlign: TextAlign.center,
                        maxLines: 1,
                      ),
                    ),
                    const SizedBoxHeightWidget(type: SizedBoxType.small),
                    Form(
                      child: BlocConsumer<RegistrationCubit, RegistrationState>(
                        listener: (context, state) {
                          if (state.status.isSubmissionFailure) {
                            if (state.failure is WeakPasswordException) {
                              showGenericSnackBar(
                                context: context,
                                title: '',
                                content: 'Weak Password',
                              );
                            } else if (state.failure is InvalidEmailException) {
                              showGenericSnackBar(
                                context: context,
                                title: '',
                                content: 'Invalid Email',
                              );
                            } else if (state.failure is GenericAuthException) {
                              showGenericSnackBar(
                                context: context,
                                title: '',
                                content: 'Unknown Error',
                              );
                            }
                          }
                        },
                        builder: (context, state) {
                          return Column(
                            children: [
                              EmailTextFormField(
                                onChanged: (value) => context
                                    .read<RegistrationCubit>()
                                    .emailChanged(value),
                                email: state.email,
                              ),
                              const SizedBoxHeightWidget(
                                type: SizedBoxType.small,
                              ),
                              PasswordTextFormField(
                                onChanged: (value) => context
                                    .read<RegistrationCubit>()
                                    .passwordChanged(value),
                                password: state.password,
                              ),
                              const SizedBoxHeightWidget(
                                type: SizedBoxType.small,
                              ),
                              if (state.status.isSubmissionInProgress)
                                const Center(
                                  child: CircularProgressIndicator(),
                                )
                              else
                                FlatButtonAuth(
                                  theme: theme,
                                  text: 'Register',
                                  size: const Size(250, 40),
                                  onPressed: () => context
                                      .read<RegistrationCubit>()
                                      .register(),
                                ),
                              const SizedBoxHeightWidget(
                                type: SizedBoxType.small,
                              ),
                              FlatButtonAuth(
                                theme: theme,
                                text: 'Already have an account? Walk in',
                                size: const Size(400, 40),
                                onPressed: () =>
                                    context.router.push(const WalkInRoute()),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
