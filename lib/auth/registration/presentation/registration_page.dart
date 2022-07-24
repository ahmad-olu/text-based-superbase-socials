import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geat/auth/core/core.dart';
import 'package:geat/auth/registration/registration.dart';
import 'package:geat/core/core.dart';
import 'package:geat/injection.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<RegistrationBloc>(),
      child: const RegistrationView(),
    );
  }
}

class RegistrationView extends StatelessWidget {
  const RegistrationView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final _formKey = GlobalKey<FormState>();
    return BlocConsumer<RegistrationBloc, RegistrationState>(
      listenWhen: (previous, current) =>
          previous.status == RegistrationStatus.submitting &&
          current.status != RegistrationStatus.submitting,
      listener: (context, state) {
        if (state.status == RegistrationStatus.failed) {
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
                    '',
                  ),
                ),
              );
            },
          );
        } else if (state.status == RegistrationStatus.succeeded) {
          //Todo? pass page to feedPage
        }
      },
      builder: (context, state) {
        return Scaffold(
          body: Padding(
            padding:
                const EdgeInsets.only(bottom: 35, top: 15, left: 12, right: 12),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(AppTheme.values.length, (index) {
                      final itemAppTheme = AppTheme.values[index];
                      return Card(
                        color: appThemeData[itemAppTheme]!.colorScheme.primary,
                        child: SizedBox(
                          width: ResponsiveWidget.isMobile(context) ? 90 : 150,
                          height: 70,
                          child: ListTile(
                            title: FittedBox(
                              fit: BoxFit.fitWidth,
                              child: Text(
                                itemAppTheme.toString().substring(9),
                                style: appThemeData[itemAppTheme]
                                    ?.textTheme
                                    .headline3,
                                textAlign: TextAlign.center,
                              ),
                            ),
                            onTap: () {
                              BlocProvider.of<ThemeBloc>(context)
                                  .add(ThemeEvent.themeChanged(itemAppTheme));
                            },
                          ),
                        ),
                      );
                    }),
                  ),
                  const SizedBox(height: 36),
                  Container(
                    width: 550,
                    height: 610,
                    padding: const EdgeInsets.only(bottom: 25),
                    decoration: BoxDecoration(
                      color: theme.scaffoldBackgroundColor,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(25.4)),
                    ),
                    child: Card(
                      child: Column(
                        children: [
                          const GlobalSizedBox(
                            sizedBoxSize: SizedBoxSize.large,
                          ),
                          Text(
                            'Enjoy Story Telling with Geat',
                            style: theme.textTheme.headline1,
                            textAlign: TextAlign.center,
                          ),
                          const GlobalSizedBox(
                            sizedBoxSize: SizedBoxSize.large,
                          ),
                          Form(
                            key: _formKey,
                            child: Padding(
                              padding: const EdgeInsets.all(8.4),
                              child: Column(
                                children: [
                                  UsernameTextFormField(
                                    onChanged: (value) {
                                      context.read<RegistrationBloc>().add(
                                            RegistrationEvent.usernameChanged(
                                              usernameStr: value,
                                            ),
                                          );
                                    },
                                    canSubmit: state.canSubmit,
                                    usernameInput: state.username,
                                    isCheckingUsername:
                                        state.isCheckingUsername,
                                  ),
                                  const GlobalSizedBox(),
                                  EmailTextFormField(
                                    onChanged: (value) {
                                      context.read<RegistrationBloc>().add(
                                            RegistrationEvent.emailChanged(
                                              emailStr: value,
                                            ),
                                          );
                                    },
                                    email: state.email,
                                  ),
                                  const GlobalSizedBox(),
                                  PasswordTextFormField(
                                    onChanged: (value) {
                                      context.read<RegistrationBloc>().add(
                                            RegistrationEvent.passwordChanged(
                                              passwordStr: value,
                                            ),
                                          );
                                    },
                                    password: state.password,
                                  ),
                                  const GlobalSizedBox(),
                                  FlatButtonAuth(
                                    theme: theme,
                                    text: 'Join the Community',
                                    onPressed: null,
                                  ),
                                  const GlobalSizedBox(),
                                  FlatButtonAuth(
                                    theme: theme,
                                    text: 'Already a Member? Walk-in -->',
                                    size: const Size(380, 50),
                                    onPressed: null,
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
