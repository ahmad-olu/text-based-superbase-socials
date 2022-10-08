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
      textPost: json['textPost'],
      comicPost: json['comicPost'],
      date: fireStoreTimestampFromJson(json['date']),
    );

Map<String, dynamic> _$$_NotificationToJson(_$_Notification instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': _$NotifTypeEnumMap[instance.type]!,
      'fromUser': fireStoreUserToJson(instance.fromUser),
      'textPost': fireStoreTextPostToJson(instance.textPost),
      'comicPost': fireStoreComicPostToJson(instance.comicPost),
      'date': fireStoreTimestampToJson(instance.date),
    };

const _$NotifTypeEnumMap = {
  NotifType.like: 'like',
  NotifType.comment: 'comment',
  NotifType.follow: 'follow',
  NotifType.comicPost: 'comicPost',
  NotifType.textPost: 'textPost',
  NotifType.reImagined: 'reImagined',
};
