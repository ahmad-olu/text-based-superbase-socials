import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification.freezed.dart';
part 'notification.g.dart';

@freezed
class Notification with _$Notification {
  const factory Notification({
    @JsonKey(name: 'owner_id') required String ownerID,
    required String id,
    required String author,
    @JsonKey(name: 'notification_type') required String notificationType,
    @JsonKey(name: 'created_at') required DateTime date,
  }) = _Notification;

  factory Notification.fromJson(Map<String, dynamic> json) =>
      _$NotificationFromJson(json);
}
