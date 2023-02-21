// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SavedPost _$$_SavedPostFromJson(Map<String, dynamic> json) => _$_SavedPost(
      id: json['id'] as String?,
      savedOwner: json['savedOwner'] as String,
      postid: json['postid'] as String?,
      date: DateTime.parse(json['date'] as String),
    );

Map<String, dynamic> _$$_SavedPostToJson(_$_SavedPost instance) =>
    <String, dynamic>{
      'id': instance.id,
      'savedOwner': instance.savedOwner,
      'postid': instance.postid,
      'date': instance.date.toIso8601String(),
    };
