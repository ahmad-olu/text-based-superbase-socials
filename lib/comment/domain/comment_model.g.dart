// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Comment _$$_CommentFromJson(Map<String, dynamic> json) => _$_Comment(
      id: json['id'] as String?,
      postId: json['postId'] as String,
      author: json['author'],
      postType: $enumDecode(_$PostTypeEnumMap, json['postType']),
      content: json['content'] as String,
      date: fireStoreTimestampFromJson(json['date']),
    );

Map<String, dynamic> _$$_CommentToJson(_$_Comment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'postId': instance.postId,
      'author': fireStoreUserToJson(instance.author),
      'postType': _$PostTypeEnumMap[instance.postType]!,
      'content': instance.content,
      'date': fireStoreTimestampToJson(instance.date),
    };

const _$PostTypeEnumMap = {
  PostType.comicPost: 'comicPost',
  PostType.textPost: 'textPost',
};
