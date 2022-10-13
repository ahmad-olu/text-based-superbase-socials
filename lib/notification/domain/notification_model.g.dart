// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Notification _$$_NotificationFromJson(Map<String, dynamic> json) =>
    _$_Notification(
      id: json['id'] as String?,
      type: $enumDecode(_$NotifTypeEnumMap, json['type']),
      fromUser: json['fromUser'],
      post: json['post'],
      date: fireStoreTimestampFromJson(json['date']),
    );

Map<String, dynamic> _$$_NotificationToJson(_$_Notification instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': _$NotifTypeEnumMap[instance.type]!,
      'fromUser': fireStoreUserToJson(instance.fromUser),
      'post': fireStorePostToJson(instance.post),
      'date': fireStoreTimestampToJson(instance.date),
    };

const _$NotifTypeEnumMap = {
  NotifType.like: 'like',
  NotifType.comment: 'comment',
  NotifType.follow: 'follow',
  NotifType.post: 'post',
  NotifType.reImagined: 'reImagined',
};
