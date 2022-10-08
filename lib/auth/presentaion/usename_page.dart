import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:geat/auth/application/registration_cubit/registration_cubit.dart';
import 'package:geat/auth/application/username_check_bloc/username_check_bloc.dart';
import 'package:geat/auth/infrastructure/firebase_auth_facade.dart';
import 'package:geat/auth/presentaion/widgets/flat_button_auth.dart';
import 'package:geat/auth/presentaion/widgets/username_text_form_field.dart';
import 'package:geat/core/domain/username_input.dart';
import 'package:geat/core/enum/enum.dart';
import 'package:geat/core/routes/app_router.gr.dart';
import 'package:geat/core/utilities/generic_show_snack_bar.dart';
import 'package:geat/core/widget/sized_box_widget.dart';

class UserNameCheckPage extends StatelessWidget {
  const UserNameCheckPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UsernameCheckBloc(
        context.read<AuthFacade>(),
      ),
      child: const UserNameCheckView(),
    );
  }
}

class UserNameCheckView extends StatelessWidget {
  const UserNameCheckView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.of(context);
    return Scaffold(
      body: BlocConsumer<UsernameCheckBloc, UsernameCheckState>(
        listenWhen: (previous, current) =>
            previous.status == UsernameCheckStatus.submitting &&
            current.status != UsernameCheckStatus.submitting,
        listener: (context, state) {
          if (state.status == UsernameCheckStatus.failed) {
            showGenericSnackBar(
              context: context,
              title: '',
              content: 'Unable to Proceed',
            );
          } else if (state.status == UsernameCheckStatus.succeeded) {
            showGenericSnackBar(
              context: context,
              title: '',
              content: 'Successfully',
            );
          }
        },
        builder: (context, state) {
          final isBusy = state.isCheckingUsername ||
              state.status == UsernameCheckStatus.submitting;
          final canSubmit =
              Formz.validate([state.username]) == FormzStatus.valid && !isBusy;

          return Center(
            child: SizedBox(
              height: size.size.height / 2.2,
              width: size.size.width / 1.2,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(28.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FittedBox(
                        child: Text(
                          'Pick a username',
                          style: theme.textTheme.headline1,
                          textAlign: TextAlign.center,
                          maxLines: 1,
                        ),
                      ),
                      const SizedBoxHeightWidget(type: SizedBoxType.small),
                      UsernameTextFormField(
                        onChanged: (value) {
                          context.read<UsernameCheckBloc>().add(
                                UsernameCheckEvent.userChanged(
                                  username: value,
                                ),
                              );
                        },
                        status: state.status,
                        usernameInput: state.username,
                        isCheckingUsername: state.isCheckingUsername,
                        canSubmit: canSubmit,
                      ),
                      const SizedBoxHeightWidget(
                        type: SizedBoxType.small,
                      ),
                      if (state.status == UsernameCheckStatus.submitting)
                        const CircularProgressIndicator()
                      else
                        FlatButtonAuth(
                          theme: theme,
                          text: 'Proceed',
                          size: const Size(250, 40),
                          onPressed: canSubmit
                              ? () {
                                  context.router.push(
                                    RegistrationRoute(
                                      username: state.username.value,
                                    ),
                                  );
                                }
                              : null,
                        ),
                      const SizedBoxHeightWidget(
                        type: SizedBoxType.small,
                      ),
                      FlatButtonAuth(
                        theme: theme,
                        text: 'Already a member? Walk in',
                        size: const Size(400, 40),
                        onPressed: () =>
                            context.router.push(const WalkInRoute()),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
