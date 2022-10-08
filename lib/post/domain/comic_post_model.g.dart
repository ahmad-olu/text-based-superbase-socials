// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comic_post_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ComicPost _$$_ComicPostFromJson(Map<String, dynamic> json) => _$_ComicPost(
      id: json['id'] as String?,
      author: json['author'],
      title: json['title'] as String,
      subTitle: json['subTitle'] as String?,
      imageUrls:
          (json['imageUrls'] as List<dynamic>).map((e) => e as String).toList(),
      canReImagine: json['canReImagine'] as bool,
      postType: $enumDecodeNullable(_$PostTypeEnumMap, json['postType']),
      category: (json['category'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      likes: json['likes'] as int,
      dateCreated: fireStoreTimestampFromJson(json['dateCreated']),
    );

Map<String, dynamic> _$$_ComicPostToJson(_$_ComicPost instance) =>
    <String, dynamic>{
      'id': instance.id,
      'author': fireStoreUserToJson(instance.author),
      'title': instance.title,
      'subTitle': instance.subTitle,
      'imageUrls': instance.imageUrls,
      'canReImagine': instance.canReImagine,
      'postType': _$PostTypeEnumMap[instance.postType],
      'category': instance.category,
      'likes': instance.likes,
      'dateCreated': fireStoreTimestampToJson(instance.dateCreated),
    };

const _$PostTypeEnumMap = {
  PostType.comicPost: 'comicPost',
  PostType.textPost: 'textPost',
};
