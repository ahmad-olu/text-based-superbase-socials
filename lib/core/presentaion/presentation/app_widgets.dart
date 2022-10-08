import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geat/auth/application/auth_bloc/auth_bloc.dart';
import 'package:geat/auth/infrastructure/firebase_auth_facade.dart';
import 'package:geat/core/application/internet_connectivity_bloc/internet_connectivity_bloc.dart';
import 'package:geat/core/application/theme_bloc/theme_bloc.dart';
import 'package:geat/core/infrastructure/storage_repository.dart';
import 'package:geat/core/routes/app_router.gr.dart';
import 'package:geat/core/services/firebase_service.dart';
import 'package:geat/feed/application/liked_post_cubit/liked_post_cubit.dart';
import 'package:geat/feed/application/post_actor_bloc/post_actor_bloc.dart';
import 'package:geat/notification/infrastructure/notification_repository.dart';
import 'package:geat/post/infrastructure/post_repository.dart';
import 'package:geat/profile/infrastructure/user_repository.dart';

class AppWidget extends StatelessWidget {
  AppWidget({super.key});
  final appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => AuthFacade(
            FirebaseModule().database,
            FirebaseModule().auth,
          ),
        ),
        RepositoryProvider(
          create: (context) => UserRepository(FirebaseModule().database),
        ),
        RepositoryProvider(
          create: (context) => PostRepository(FirebaseModule().database),
        ),
        RepositoryProvider(
          create: (context) => StorageRepository(FirebaseModule().storage),
        ),
        RepositoryProvider(
          create: (context) =>
              NotificationRepository(FirebaseModule().database),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => AuthBloc(context.read<AuthFacade>()),
          ),
          BlocProvider(
            create: (context) => ThemeBloc(),
          ),
          BlocProvider(
            create: (context) => LikedPostCubit(
              context.read<AuthBloc>(),
              context.read<PostRepository>(),
            ),
          ),
          BlocProvider(
            create: (context) => PostActorBloc(
              context.read<PostRepository>(),
              context.read<AuthBloc>(),
            ),
          ),
          BlocProvider(create: (context) => InternetConnectivityBloc())
        ],
        child: BlocBuilder<ThemeBloc, ThemeState>(
          builder: (context, state) {
            return MaterialApp.router(
              title: 'Geat',
              theme: state.themeData,
              routerDelegate: appRouter.delegate(),
              routeInformationParser: appRouter.defaultRouteParser(),
            );
          },
        ),
      ),
    );
  }
}
