// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Notification _$$_NotificationFromJson(Map<String, dynamic> json) =>
    _$_Notification(
      ownerID: json['owner_id'] as String,
      id: json['id'] as String,
      author: json['author'] as String,
      notificationType: json['notification_type'] as String,
      date: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$_NotificationToJson(_$_Notification instance) =>
    <String, dynamic>{
      'owner_id': instance.ownerID,
      'id': instance.id,
      'author': instance.author,
      'notification_type': instance.notificationType,
      'created_at': instance.date.toIso8601String(),
    };
