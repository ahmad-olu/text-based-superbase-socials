import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geat/auth/application/auth_bloc/auth_bloc.dart';
import 'package:geat/auth/application/extra_auth_bloc/extra_auth_bloc.dart';
import 'package:geat/auth/infrastructure/firebase_auth_facade.dart';
import 'package:geat/auth/presentaion/widgets/flat_button_auth.dart';
import 'package:geat/core/enum/enum.dart';
import 'package:geat/core/routes/app_router.gr.dart';
import 'package:geat/core/widget/sized_box_widget.dart';
import 'package:visibility_aware_state/visibility_aware_state.dart';

class VerifyEmailPage extends StatelessWidget {
  const VerifyEmailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ExtraAuthBloc(context.read<AuthFacade>()),
      child: const VerifyEmailView(),
    );
  }
}

class VerifyEmailView extends StatefulWidget {
  const VerifyEmailView({super.key});

  @override
  State<VerifyEmailView> createState() => _VerifyEmailViewState();
}

class _VerifyEmailViewState extends VisibilityAwareState<VerifyEmailView> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return WillPopScope(
      onWillPop: () async => false,
      child: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state.status == AuthStatus.authenticated) {
            AutoRouter.of(context).push(
              const HomeRoute(),
            );
          }
        },
        child: Scaffold(
          body: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: FittedBox(
                      child: Text(
                        'verify your email',
                        style: theme.textTheme.headline1,
                        textAlign: TextAlign.center,
                        maxLines: 1,
                      ),
                    ),
                  ),
                  BlocBuilder<ExtraAuthBloc, ExtraAuthState>(
                    builder: (context, state) {
                      return state.isLoading
                          ? const Center(
                              child: CircularProgressIndicator(),
                            )
                          : FlatButtonAuth(
                              theme: theme,
                              text: 'send email verification',
                              size: const Size(400, 40),
                              onPressed: () {
                                context.read<ExtraAuthBloc>().add(
                                      const ExtraAuthEvent
                                          .sendEmailVerification(),
                                    );
                              },
                            );
                    },
                  ),
                  const SizedBoxHeightWidget(
                    type: SizedBoxType.small,
                  ),
                  FlatButtonAuth(
                    theme: theme,
                    text: 'restart',
                    size: const Size(150, 40),
                    onPressed: () async {
                      context.read<AuthBloc>().add(const AuthEvent.signOut());
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void onVisibilityChanged(WidgetVisibility visibility) {
    switch (visibility) {
      case WidgetVisibility.VISIBLE:
        final user = BlocProvider.of<AuthBloc>(context).state;
        log('resumed');
        log('userStatus ===> ${user.status}');
        log('user ===> ${user.user}');
        // BlocProvider.of<AuthBloc>(context).add(
        //   AuthEvent.authUserChanged(user: user),
        // );

        break;
      case WidgetVisibility.INVISIBLE:
        //AutoRouter.of(context).push(const SplashRoute());
        log('on paused');
        break;
      case WidgetVisibility.GONE:
        // TODO: Handle this case.
        break;
    }
    super.onVisibilityChanged(visibility);
  }
}
