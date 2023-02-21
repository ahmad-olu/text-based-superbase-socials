import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const User._();
  const factory User({
    required String id,
    required String email,
    required String username,
    String? fullName,
    String? website,
    @JsonKey(name: 'email_verified') bool? emailVerified,
    @JsonKey(name: 'has_payment_account') bool? hasPaymentAccount,
    @JsonKey(name: 'profile_image_url') String? profileImageUrl,
    @JsonKey(name: 'background_image_url') String? backgroundImageUrl,
    // required int followers,
    // required int following,
    String? bio,
    @JsonKey(name: 'created_at') DateTime? dateJoined,
    //required String? location,
  }) = _User;

  static const empty = User(
    id: '',
    username: '',
    fullName: '',
    email: '',
    website: '',
    profileImageUrl: '',
    bio: '',
  );

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
class UserFollowCount with _$UserFollowCount {
  const factory UserFollowCount({
    required String id,
    @JsonValue('user_id') required String userId,
    required int following,
    required int followers,
  }) = _UserFollowCount;

  factory UserFollowCount.fromJson(Map<String, dynamic> json) =>
      _$UserFollowCountFromJson(json);
}
