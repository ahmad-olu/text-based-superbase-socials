// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as String,
      username: json['username'] as String,
      fullName: json['fullName'] as String?,
      email: json['email'] as String,
      website: json['website'] as String?,
      profileImageUrl: json['profileImageUrl'] as String?,
      followers: json['followers'] as int,
      following: json['following'] as int,
      bio: json['bio'] as String?,
      dateJoined: fireStoreTimestampFromJson(json['dateJoined']),
      location: json['location'] as String?,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'fullName': instance.fullName,
      'email': instance.email,
      'website': instance.website,
      'profileImageUrl': instance.profileImageUrl,
      'followers': instance.followers,
      'following': instance.following,
      'bio': instance.bio,
      'dateJoined': fireStoreTimestampToJson(instance.dateJoined),
      'location': instance.location,
    };
