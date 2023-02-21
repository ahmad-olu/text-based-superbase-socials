// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Comment _$$_CommentFromJson(Map<String, dynamic> json) => _$_Comment(
      id: json['id'] as String?,
      authorId: json['author_id'] as String?,
      authorUsername: json['author_username'] as String?,
      authorProfileImageURL: json['author_profile_image_url'] as String?,
      postId: json['postId'] as String,
      content: json['content'] as String,
      date: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$_CommentToJson(_$_Comment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'author_id': instance.authorId,
      'author_username': instance.authorUsername,
      'author_profile_image_url': instance.authorProfileImageURL,
      'postId': instance.postId,
      'content': instance.content,
      'created_at': instance.date?.toIso8601String(),
    };
