// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'likes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Likes _$$_LikesFromJson(Map<String, dynamic> json) => _$_Likes(
      id: json['id'] as String?,
      postId: json['postId'] as String,
      date: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$_LikesToJson(_$_Likes instance) => <String, dynamic>{
      'id': instance.id,
      'postId': instance.postId,
      'created_at': instance.date?.toIso8601String(),
    };
