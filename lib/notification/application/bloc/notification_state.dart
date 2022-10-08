part of 'notification_bloc.dart';

enum NotificationsStatus { initial, loading, loaded, error }

@freezed
class NotificationState with _$NotificationState {
  const factory NotificationState({
    required List<Notification?> notifications,
    required NotificationsStatus status,
    required Exception? failure,
  }) = _NotificationState;
  factory NotificationState.initial() => const _NotificationState(
        notifications: [],
        status: NotificationsStatus.initial,
        failure: null,
      );
}
