part of 'notification_bloc.dart';

@freezed
class NotificationEvent with _$NotificationEvent {
  const factory NotificationEvent.updateNotification(
      {required List<Notification?> notifications}) = _UpdateNotification;
}
