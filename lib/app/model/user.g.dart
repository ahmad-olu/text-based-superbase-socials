// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as String,
      email: json['email'] as String,
      username: json['username'] as String,
      fullName: json['fullName'] as String?,
      website: json['website'] as String?,
      emailVerified: json['email_verified'] as bool?,
      hasPaymentAccount: json['has_payment_account'] as bool?,
      profileImageUrl: json['profile_image_url'] as String?,
      backgroundImageUrl: json['background_image_url'] as String?,
      bio: json['bio'] as String?,
      dateJoined: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'username': instance.username,
      'fullName': instance.fullName,
      'website': instance.website,
      'email_verified': instance.emailVerified,
      'has_payment_account': instance.hasPaymentAccount,
      'profile_image_url': instance.profileImageUrl,
      'background_image_url': instance.backgroundImageUrl,
      'bio': instance.bio,
      'created_at': instance.dateJoined?.toIso8601String(),
    };

_$_UserFollowCount _$$_UserFollowCountFromJson(Map<String, dynamic> json) =>
    _$_UserFollowCount(
      id: json['id'] as String,
      userId: json['userId'] as String,
      following: json['following'] as int,
      followers: json['followers'] as int,
    );

Map<String, dynamic> _$$_UserFollowCountToJson(_$_UserFollowCount instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'following': instance.following,
      'followers': instance.followers,
    };
