import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geat/auth/application/auth_bloc/auth_bloc.dart';
import 'package:geat/core/application/internet_connectivity_bloc/internet_connectivity_bloc.dart';
import 'package:geat/core/routes/app_router.gr.dart';
import 'package:geat/core/utilities/generic_show_snack_bar.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: MultiBlocListener(
        listeners: [
          BlocListener<AuthBloc, AuthState>(
            listener: (context, state) {
              if (state.status == AuthStatus.unAuthenticated) {
                AutoRouter.of(context).push(
                  const WalkInRoute(),
                );
              } else if (state.status == AuthStatus.authenticated) {
                AutoRouter.of(context).push(
                  const HomeRoute(),
                );
              } else if (state.status == AuthStatus.emailNotVerified) {
                AutoRouter.of(context).push(
                  const VerifyEmailRoute(),
                );
              }
            },
          ),
          BlocListener<InternetConnectivityBloc, InternetConnectivityState>(
            listener: (context, state) {
              state.map(
                initial: (_) {},
                activeConnection: (_) {
                  showGenericSnackBar(
                    context: context,
                    title: 'Internet',
                    content: 'Active Internet Connection',
                  );
                },
                noConnection: (_) {
                  showGenericSnackBar(
                    context: context,
                    title: 'Internet',
                    content: 'No Internet Connection',
                  );
                },
              );
            },
          ),
        ],
        child: WillPopScope(
          onWillPop: () async => false,
          child: const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          ),
        ),
      ),
    );
  }
}
