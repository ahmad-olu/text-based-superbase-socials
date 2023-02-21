// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Post _$$_PostFromJson(Map<String, dynamic> json) => _$_Post(
      id: json['id'] as String?,
      authorId: json['author_id'] as String?,
      authorUsername: json['author_username'] as String?,
      authorProfileImageUrl: json['author_profile_image_url'] as String?,
      title: json['title'] as String,
      subTitle: json['sub_title'] as String?,
      publish: json['publish'] as bool,
      canReImagine: json['can_re_imagine'] as bool,
      canComment: json['can_comment'] as bool,
      imagesURL: (json['images_url'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      content: json['content'] as String?,
      dateCreated: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$_PostToJson(_$_Post instance) => <String, dynamic>{
      'id': instance.id,
      'author_id': instance.authorId,
      'author_username': instance.authorUsername,
      'author_profile_image_url': instance.authorProfileImageUrl,
      'title': instance.title,
      'sub_title': instance.subTitle,
      'publish': instance.publish,
      'can_re_imagine': instance.canReImagine,
      'can_comment': instance.canComment,
      'images_url': instance.imagesURL,
      'content': instance.content,
      'created_at': instance.dateCreated.toIso8601String(),
    };
