part of 'notifications_bloc.dart';

@freezed
class NotificationsEvent with _$NotificationsEvent {
  const factory NotificationsEvent.updatedNotifications({
    required List<Notif> notifications,
  }) = _UpdatedNotifications;
}
