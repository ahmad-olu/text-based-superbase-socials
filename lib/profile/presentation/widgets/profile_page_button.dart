import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geat/core/routes/app_router.gr.dart';
import 'package:geat/profile/application/profile_bloc/profile_bloc.dart';

class ProfilePageButton extends StatelessWidget {
  const ProfilePageButton({
    super.key,
    required this.context,
    required this.isCurrentUser,
    required this.isFollowing,
  });
  final BuildContext context;
  final bool isCurrentUser;
  final bool isFollowing;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    if (isCurrentUser) {
      return ElevatedButton(
        onPressed: () => context.router
            .push(EditProfileRoute(profileBloc: context.read<ProfileBloc>())),
        style: TextButton.styleFrom(
          backgroundColor: theme.colorScheme.primary.withOpacity(0.4),
        ),
        child: FittedBox(
          child: Text(
            'edit profile',
            style: theme.textTheme.headline5,
          ),
        ),
      );
    } else {
      return ElevatedButton(
        onPressed: () => isFollowing
            ? context.read<ProfileBloc>().add(const ProfileEvent.unFollowUser())
            : context.read<ProfileBloc>().add(const ProfileEvent.followUser()),
        style: TextButton.styleFrom(
          backgroundColor: isFollowing
              ? Theme.of(context).colorScheme.secondary
              : Theme.of(context).colorScheme.primary,
        ),
        child: FittedBox(
          child: Text(
            isFollowing ? 'unFollow' : 'follow',
            style: theme.textTheme.headline5,
          ),
        ),
      );
    }
  }
}
