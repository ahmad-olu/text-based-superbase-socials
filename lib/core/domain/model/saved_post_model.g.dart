// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'saved_post_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SavedPost _$$_SavedPostFromJson(Map<String, dynamic> json) => _$_SavedPost(
      id: json['id'] as String?,
      savedOwner: json['savedOwner'] as String,
      postType: $enumDecode(_$PostTypeEnumMap, json['postType']),
      post: json['post'],
      dateCreated: fireStoreTimestampFromJson(json['dateCreated']),
    );

Map<String, dynamic> _$$_SavedPostToJson(_$_SavedPost instance) =>
    <String, dynamic>{
      'id': instance.id,
      'savedOwner': instance.savedOwner,
      'postType': _$PostTypeEnumMap[instance.postType]!,
      'post': fireStorePostToJson(instance.post),
      'dateCreated': fireStoreTimestampToJson(instance.dateCreated),
    };

const _$PostTypeEnumMap = {
  PostType.comicPost: 'comicPost',
  PostType.textPost: 'textPost',
};
