import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:geat/auth/application/walk_in_cubit/walk_in_cubit.dart';
import 'package:geat/auth/domain/auth_failure.dart';
import 'package:geat/auth/infrastructure/firebase_auth_facade.dart';
import 'package:geat/auth/presentaion/widgets/email_text_form_field.dart';
import 'package:geat/auth/presentaion/widgets/flat_button_auth.dart';
import 'package:geat/auth/presentaion/widgets/password_text_form_field.dart';
import 'package:geat/core/enum/enum.dart';
import 'package:geat/core/routes/app_router.gr.dart';
import 'package:geat/core/utilities/generic_show_snack_bar.dart';
import 'package:geat/core/widget/sized_box_widget.dart';

class WalkInPage extends StatelessWidget {
  const WalkInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => WalkInCubit(
        context.read<AuthFacade>(),
      ),
      child: const WalkInView(),
    );
  }
}

class WalkInView extends StatelessWidget {
  const WalkInView({super.key});

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
                        'Enjoy Story Telling with Geat',
                        style: theme.textTheme.headline1,
                        textAlign: TextAlign.center,
                        maxLines: 1,
                      ),
                    ),
                    const SizedBoxHeightWidget(type: SizedBoxType.small),
                    Form(
                      child: BlocConsumer<WalkInCubit, WalkInState>(
                        listener: (context, state) {
                          if (state.status.isSubmissionFailure) {
                            if (state.failure is UserNotFoundException) {
                              showGenericSnackBar(
                                context: context,
                                title: '',
                                content: 'User not Found',
                              );
                            } else if (state.failure
                                is InvalidEmailAndPasswordCombinationException) {
                              showGenericSnackBar(
                                context: context,
                                title: '',
                                content:
                                    'Invalid Email or Password Combination',
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
                                    .read<WalkInCubit>()
                                    .emailChanged(value),
                                email: state.email,
                              ),
                              const SizedBoxHeightWidget(
                                type: SizedBoxType.small,
                              ),
                              PasswordTextFormField(
                                onChanged: (value) => context
                                    .read<WalkInCubit>()
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
                                  text: 'walk-in',
                                  size: const Size(150, 40),
                                  onPressed: () =>
                                      context.read<WalkInCubit>().walkIn(),
                                ),
                              const SizedBoxHeightWidget(
                                type: SizedBoxType.small,
                              ),
                              FlatButtonAuth(
                                theme: theme,
                                text: 'Forgot password',
                                size: const Size(250, 40),
                                onPressed: () => context.router
                                    .push(const ForgotPasswordRoute()),
                              ),
                              const SizedBoxHeightWidget(
                                type: SizedBoxType.small,
                              ),
                              FlatButtonAuth(
                                theme: theme,
                                text: 'Need an account? Register',
                                size: const Size(400, 40),
                                onPressed: () => context.router
                                    .push(const UserNameCheckRoute()),
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
