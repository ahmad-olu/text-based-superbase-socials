import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geat/auth/application/auth_bloc/auth_bloc.dart';
import 'package:geat/notification/domain/notification_model.dart';
import 'package:geat/notification/infrastructure/notification_repository.dart';

part 'notification_event.dart';
part 'notification_state.dart';
part 'notification_bloc.freezed.dart';

class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  final NotificationRepository _notificationRepository;
  final AuthBloc _authBloc;
  StreamSubscription<List<Future<Notification?>>>? _notificationsSubscription;
  NotificationBloc(this._notificationRepository, this._authBloc)
      : super(NotificationState.initial()) {
    _notificationsSubscription?.cancel();
    _notificationsSubscription = _notificationRepository
        .getUserNotifications(userId: _authBloc.state.user!.uid)
        .listen((notifications) async {
      final allNotifications = await Future.wait(notifications);
      add(
        NotificationEvent.updateNotification(
          notifications: allNotifications,
        ),
      );
    });

    on<NotificationEvent>(
      (event, emit) async {
        await event.map(
          updateNotification: (e) async {
            emit(
              state.copyWith(
                notifications: e.notifications,
                status: NotificationsStatus.loaded,
              ),
            );
          },
        );
      },
    );
  }
  @override
  Future<void> close() {
    _notificationsSubscription?.cancel();
    return super.close();
  }
}
