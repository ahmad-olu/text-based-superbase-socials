import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geat/auth/application/auth_bloc/auth_bloc.dart';
import 'package:geat/core/domain/geat_failure.dart';
import 'package:geat/core/utilities/generic_show_snack_bar.dart';
import 'package:geat/feed/application/liked_post_cubit/liked_post_cubit.dart';
import 'package:geat/post/infrastructure/post_repository.dart';
import 'package:geat/profile/application/profile_bloc/profile_bloc.dart';
import 'package:geat/profile/infrastructure/user_repository.dart';
import 'package:geat/profile/presentation/widgets/default_profile_widget.dart';
import 'package:geat/profile/presentation/widgets/profile_page_loading_widget.dart';

class ProfilePage extends StatelessWidget implements AutoRouteWrapper {
  const ProfilePage({super.key, required this.userId});
  final String userId;

  @override
  Widget build(BuildContext context) {
    return const ProfileView();
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => ProfileBloc(
        context.read<PostRepository>(),
        context.read<LikedPostCubit>(),
        context.read<AuthBloc>(),
        context.read<UserRepository>(),
      )..add(ProfileEvent.loadUser(userId)),
      child: this,
    );
  }
}

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileBloc, ProfileState>(
      listener: (context, state) {
        if (state.failure is InsufficientPermissionException) {
          showGenericSnackBar(
            context: context,
            title: 'Error',
            content:
                'Sorry You do not have sufficient permission to perform this Operation',
          );
        }
        if (state.failure is GenericGeatException) {
          showGenericSnackBar(
            context: context,
            title: 'Error',
            content: 'UnKnown Error please Contact',
          );
        }
      },
      builder: (context, state) {
        switch (state.status) {
          case ProfileStatus.loading:
            return const ProfileLoadingWidget();
          default:
            return DefaultProfileWidget(state: state);
        }
      },
    );
  }
}
