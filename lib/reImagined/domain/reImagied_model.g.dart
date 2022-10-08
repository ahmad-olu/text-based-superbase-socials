// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reImagied_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReImagined _$$_ReImaginedFromJson(Map<String, dynamic> json) =>
    _$_ReImagined(
      id: json['id'] as String?,
      postId: json['postId'] as String,
      author: json['author'],
      content: json['content'] as String,
      likes: json['likes'] as int,
      date: fireStoreTimestampFromJson(json['date']),
    );

Map<String, dynamic> _$$_ReImaginedToJson(_$_ReImagined instance) =>
    <String, dynamic>{
      'id': instance.id,
      'postId': instance.postId,
      'author': fireStoreUserToJson(instance.author),
      'content': instance.content,
      'likes': instance.likes,
      'date': fireStoreTimestampToJson(instance.date),
    };
