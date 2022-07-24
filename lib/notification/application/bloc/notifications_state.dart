part of 'notifications_bloc.dart';

enum NotificationsStatus { initial, loading, loaded, error }

@freezed
class NotificationsState with _$NotificationsState {
  const factory NotificationsState({
    required List<Notif> notifications,
    required NotificationsStatus status,
    required GeatFailure failure,
  }) = _NotificationsState;
  factory NotificationsState.initial() => const _NotificationsState(
        notifications: [],
        status: NotificationsStatus.initial,
        failure: GeatFailure(),
      );
}
