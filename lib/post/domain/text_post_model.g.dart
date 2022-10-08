// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text_post_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TextPost _$$_TextPostFromJson(Map<String, dynamic> json) => _$_TextPost(
      id: json['id'] as String?,
      author: json['author'],
      title: json['title'] as String,
      subTitle: json['subTitle'] as String?,
      postType: $enumDecodeNullable(_$PostTypeEnumMap, json['postType']),
      content: json['content'] as String,
      imageUrl: json['imageUrl'] as String?,
      canReImagine: json['canReImagine'] as bool,
      category: (json['category'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      likes: json['likes'] as int,
      dateCreated: fireStoreTimestampFromJson(json['dateCreated']),
    );

Map<String, dynamic> _$$_TextPostToJson(_$_TextPost instance) =>
    <String, dynamic>{
      'id': instance.id,
      'author': fireStoreUserToJson(instance.author),
      'title': instance.title,
      'subTitle': instance.subTitle,
      'postType': _$PostTypeEnumMap[instance.postType],
      'content': instance.content,
      'imageUrl': instance.imageUrl,
      'canReImagine': instance.canReImagine,
      'category': instance.category,
      'likes': instance.likes,
      'dateCreated': fireStoreTimestampToJson(instance.dateCreated),
    };

const _$PostTypeEnumMap = {
  PostType.comicPost: 'comicPost',
  PostType.textPost: 'textPost',
};
