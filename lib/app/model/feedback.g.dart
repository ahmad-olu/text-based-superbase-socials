// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feedback.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FeedBack _$$_FeedBackFromJson(Map<String, dynamic> json) => _$_FeedBack(
      id: json['id'] as String?,
      authorId: json['author_id'] as String?,
      authorUsername: json['author_username'] as String?,
      authorEmail: json['author_email'] as String?,
      imageURL: json['image_url'] as String,
      content: json['content'] as String,
      date: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$_FeedBackToJson(_$_FeedBack instance) =>
    <String, dynamic>{
      'id': instance.id,
      'author_id': instance.authorId,
      'author_username': instance.authorUsername,
      'author_email': instance.authorEmail,
      'image_url': instance.imageURL,
      'content': instance.content,
      'created_at': instance.date?.toIso8601String(),
    };
