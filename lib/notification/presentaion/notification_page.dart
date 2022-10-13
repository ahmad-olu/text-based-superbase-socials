import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geat/auth/application/auth_bloc/auth_bloc.dart';
import 'package:geat/core/enum/enum.dart';
import 'package:geat/core/routes/app_router.gr.dart';
import 'package:geat/notification/application/bloc/notification_bloc.dart';
import 'package:geat/notification/domain/notification_model.dart' as notify;
import 'package:geat/notification/infrastructure/notification_repository.dart';
import 'package:geat/post/domain/post_model.dart';
import 'package:geat/profile/domain/user_model.dart';
import 'package:geat/profile/presentation/widgets/user_profile_image.dart';
import 'package:intl/intl.dart';
import 'package:timeline_tile/timeline_tile.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotificationBloc(
        context.read<NotificationRepository>(),
        context.read<AuthBloc>(),
      ),
      child: const NotificationView(),
    );
  }
}

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Notifications',
          style: theme.textTheme.headline1,
        ),
        backgroundColor: theme.scaffoldBackgroundColor.withOpacity(0.5),
      ),
      body: BlocBuilder<NotificationBloc, NotificationState>(
        builder: (context, state) {
          final theme = Theme.of(context);
          switch (state.status) {
            case NotificationsStatus.error:
              return const Center(
                child: Text('Unable to retrieve notification'),
              );
            case NotificationsStatus.loaded:
              if (state.notifications.isEmpty) {
                return const Center(
                  child: Text('No notification yet'),
                );
              } else {
                return ListView.builder(
                  itemCount: state.notifications.length,
                  itemBuilder: (context, index) {
                    final notification = state.notifications[index];
                    final author = notification!.fromUser as User;
                    final date = notification.date ?? DateTime.now();
                    return TimelineTile(
                      alignment: TimelineAlign.manual,
                      afterLineStyle:
                          LineStyle(color: theme.colorScheme.primary),
                      beforeLineStyle:
                          LineStyle(color: theme.colorScheme.secondary),
                      indicatorStyle: IndicatorStyle(
                        //height: 33,
                        padding: const EdgeInsets.all(3),
                        color: theme.colorScheme.secondary,
                      ),
                      lineXY: 0.2,
                      endChild: Card(
                        color: theme.scaffoldBackgroundColor,
                        elevation: 12,
                        shadowColor: theme.colorScheme.secondary,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: author.username,
                                          style: theme.textTheme.headline2!
                                              .copyWith(
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        const TextSpan(text: '--->'),
                                        TextSpan(
                                          text: _getText(notification.type),
                                          style: theme.textTheme.headline5,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text(
                                    DateFormat.yMd().add_jm().format(
                                          date as DateTime,
                                        ),
                                    style: theme.textTheme.headline5,
                                  ),
                                ],
                              ),
                            ),
                            _getTrailing(context, notification),
                          ],
                        ),
                      ),
                      startChild: GestureDetector(
                        onTap: () => context.router.push(
                          ProfileRoute(userId: author.id),
                        ),
                        child: UserProfileImageWidget(
                          radius: 18.2,
                          profileImageUrl: author.profileImageUrl ?? '',
                        ),
                      ),
                    );
                  },
                );
              }
            default:
              return const Center(
                child: Text('No notification yet'),
              );
          }
        },
      ),
    );
  }

  Widget _getTrailing(BuildContext context, notify.Notification notification) {
    if (notification.type == NotifType.like ||
        notification.type == NotifType.comment) {
      if (notification.post != null) {
        final post = notification.post as Post;
        return GestureDetector(
          onTap: () => context.router.push(CommentTextRoute(post: post)),
          child: post.imageUrls!.isEmpty
              ? Image.asset(
                  'assets/images/night building.jpeg',
                  fit: BoxFit.fill,
                  height: 60.0,
                  width: 60.0,
                )
              : CachedNetworkImage(
                  imageUrl: post.imageUrls!.first,
                  height: 60.0,
                  width: 60.0,
                ),
        );
      }
    } else if (notification.type == NotifType.follow) {
      return const SizedBox(
        height: 60,
        width: 60,
        child: Text(
          '😉',
          style: TextStyle(
            fontSize: 36.2,
          ),
        ),
      );
    }
    return const SizedBox.shrink();
  }

  String _getText(NotifType notification) {
    switch (notification) {
      case NotifType.like:
        return "Liked you'r post";
      case NotifType.comment:
        return 'Commented On your Post';
      case NotifType.follow:
        return 'Followed you';
      case NotifType.post:
        return '';
      case NotifType.reImagined:
        return '';
    }
  }
}
