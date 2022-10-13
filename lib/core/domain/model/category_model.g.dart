// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PostCategory _$$_PostCategoryFromJson(Map<String, dynamic> json) =>
    _$_PostCategory(
      id: json['id'] as String?,
      category: json['category'] as String,
      post: json['post'],
      postType: $enumDecode(_$PostTypeEnumMap, json['postType']),
      author: json['author'],
    );

Map<String, dynamic> _$$_PostCategoryToJson(_$_PostCategory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'category': instance.category,
      'post': fireStorePostToJson(instance.post),
      'postType': _$PostTypeEnumMap[instance.postType]!,
      'author': fireStoreUserToJson(instance.author),
    };

const _$PostTypeEnumMap = {
  PostType.comicPost: 'comicPost',
  PostType.textPost: 'textPost',
};
