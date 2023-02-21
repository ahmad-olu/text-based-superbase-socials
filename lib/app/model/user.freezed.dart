// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  String get id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String? get fullName => throw _privateConstructorUsedError;
  String? get website => throw _privateConstructorUsedError;
  @JsonKey(name: 'email_verified')
  bool? get emailVerified => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_payment_account')
  bool? get hasPaymentAccount => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_image_url')
  String? get profileImageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'background_image_url')
  String? get backgroundImageUrl =>
      throw _privateConstructorUsedError; // required int followers,
// required int following,
  String? get bio => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get dateJoined => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {String id,
      String email,
      String username,
      String? fullName,
      String? website,
      @JsonKey(name: 'email_verified') bool? emailVerified,
      @JsonKey(name: 'has_payment_account') bool? hasPaymentAccount,
      @JsonKey(name: 'profile_image_url') String? profileImageUrl,
      @JsonKey(name: 'background_image_url') String? backgroundImageUrl,
      String? bio,
      @JsonKey(name: 'created_at') DateTime? dateJoined});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? username = null,
    Object? fullName = freezed,
    Object? website = freezed,
    Object? emailVerified = freezed,
    Object? hasPaymentAccount = freezed,
    Object? profileImageUrl = freezed,
    Object? backgroundImageUrl = freezed,
    Object? bio = freezed,
    Object? dateJoined = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      website: freezed == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVerified: freezed == emailVerified
          ? _value.emailVerified
          : emailVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasPaymentAccount: freezed == hasPaymentAccount
          ? _value.hasPaymentAccount
          : hasPaymentAccount // ignore: cast_nullable_to_non_nullable
              as bool?,
      profileImageUrl: freezed == profileImageUrl
          ? _value.profileImageUrl
          : profileImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      backgroundImageUrl: freezed == backgroundImageUrl
          ? _value.backgroundImageUrl
          : backgroundImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      dateJoined: freezed == dateJoined
          ? _value.dateJoined
          : dateJoined // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$_UserCopyWith(_$_User value, $Res Function(_$_User) then) =
      __$$_UserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String email,
      String username,
      String? fullName,
      String? website,
      @JsonKey(name: 'email_verified') bool? emailVerified,
      @JsonKey(name: 'has_payment_account') bool? hasPaymentAccount,
      @JsonKey(name: 'profile_image_url') String? profileImageUrl,
      @JsonKey(name: 'background_image_url') String? backgroundImageUrl,
      String? bio,
      @JsonKey(name: 'created_at') DateTime? dateJoined});
}

/// @nodoc
class __$$_UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res, _$_User>
    implements _$$_UserCopyWith<$Res> {
  __$$_UserCopyWithImpl(_$_User _value, $Res Function(_$_User) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? username = null,
    Object? fullName = freezed,
    Object? website = freezed,
    Object? emailVerified = freezed,
    Object? hasPaymentAccount = freezed,
    Object? profileImageUrl = freezed,
    Object? backgroundImageUrl = freezed,
    Object? bio = freezed,
    Object? dateJoined = freezed,
  }) {
    return _then(_$_User(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      website: freezed == website
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as String?,
      emailVerified: freezed == emailVerified
          ? _value.emailVerified
          : emailVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasPaymentAccount: freezed == hasPaymentAccount
          ? _value.hasPaymentAccount
          : hasPaymentAccount // ignore: cast_nullable_to_non_nullable
              as bool?,
      profileImageUrl: freezed == profileImageUrl
          ? _value.profileImageUrl
          : profileImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      backgroundImageUrl: freezed == backgroundImageUrl
          ? _value.backgroundImageUrl
          : backgroundImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      dateJoined: freezed == dateJoined
          ? _value.dateJoined
          : dateJoined // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User extends _User {
  const _$_User(
      {required this.id,
      required this.email,
      required this.username,
      this.fullName,
      this.website,
      @JsonKey(name: 'email_verified') this.emailVerified,
      @JsonKey(name: 'has_payment_account') this.hasPaymentAccount,
      @JsonKey(name: 'profile_image_url') this.profileImageUrl,
      @JsonKey(name: 'background_image_url') this.backgroundImageUrl,
      this.bio,
      @JsonKey(name: 'created_at') this.dateJoined})
      : super._();

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  final String id;
  @override
  final String email;
  @override
  final String username;
  @override
  final String? fullName;
  @override
  final String? website;
  @override
  @JsonKey(name: 'email_verified')
  final bool? emailVerified;
  @override
  @JsonKey(name: 'has_payment_account')
  final bool? hasPaymentAccount;
  @override
  @JsonKey(name: 'profile_image_url')
  final String? profileImageUrl;
  @override
  @JsonKey(name: 'background_image_url')
  final String? backgroundImageUrl;
// required int followers,
// required int following,
  @override
  final String? bio;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? dateJoined;

  @override
  String toString() {
    return 'User(id: $id, email: $email, username: $username, fullName: $fullName, website: $website, emailVerified: $emailVerified, hasPaymentAccount: $hasPaymentAccount, profileImageUrl: $profileImageUrl, backgroundImageUrl: $backgroundImageUrl, bio: $bio, dateJoined: $dateJoined)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_User &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.website, website) || other.website == website) &&
            (identical(other.emailVerified, emailVerified) ||
                other.emailVerified == emailVerified) &&
            (identical(other.hasPaymentAccount, hasPaymentAccount) ||
                other.hasPaymentAccount == hasPaymentAccount) &&
            (identical(other.profileImageUrl, profileImageUrl) ||
                other.profileImageUrl == profileImageUrl) &&
            (identical(other.backgroundImageUrl, backgroundImageUrl) ||
                other.backgroundImageUrl == backgroundImageUrl) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.dateJoined, dateJoined) ||
                other.dateJoined == dateJoined));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      email,
      username,
      fullName,
      website,
      emailVerified,
      hasPaymentAccount,
      profileImageUrl,
      backgroundImageUrl,
      bio,
      dateJoined);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserCopyWith<_$_User> get copyWith =>
      __$$_UserCopyWithImpl<_$_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(
      this,
    );
  }
}

abstract class _User extends User {
  const factory _User(
      {required final String id,
      required final String email,
      required final String username,
      final String? fullName,
      final String? website,
      @JsonKey(name: 'email_verified') final bool? emailVerified,
      @JsonKey(name: 'has_payment_account') final bool? hasPaymentAccount,
      @JsonKey(name: 'profile_image_url') final String? profileImageUrl,
      @JsonKey(name: 'background_image_url') final String? backgroundImageUrl,
      final String? bio,
      @JsonKey(name: 'created_at') final DateTime? dateJoined}) = _$_User;
  const _User._() : super._();

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  String get id;
  @override
  String get email;
  @override
  String get username;
  @override
  String? get fullName;
  @override
  String? get website;
  @override
  @JsonKey(name: 'email_verified')
  bool? get emailVerified;
  @override
  @JsonKey(name: 'has_payment_account')
  bool? get hasPaymentAccount;
  @override
  @JsonKey(name: 'profile_image_url')
  String? get profileImageUrl;
  @override
  @JsonKey(name: 'background_image_url')
  String? get backgroundImageUrl;
  @override // required int followers,
// required int following,
  String? get bio;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get dateJoined;
  @override
  @JsonKey(ignore: true)
  _$$_UserCopyWith<_$_User> get copyWith => throw _privateConstructorUsedError;
}

UserFollowCount _$UserFollowCountFromJson(Map<String, dynamic> json) {
  return _UserFollowCount.fromJson(json);
}

/// @nodoc
mixin _$UserFollowCount {
  String get id => throw _privateConstructorUsedError;
  @JsonValue('user_id')
  String get userId => throw _privateConstructorUsedError;
  int get following => throw _privateConstructorUsedError;
  int get followers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserFollowCountCopyWith<UserFollowCount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserFollowCountCopyWith<$Res> {
  factory $UserFollowCountCopyWith(
          UserFollowCount value, $Res Function(UserFollowCount) then) =
      _$UserFollowCountCopyWithImpl<$Res, UserFollowCount>;
  @useResult
  $Res call(
      {String id,
      @JsonValue('user_id') String userId,
      int following,
      int followers});
}

/// @nodoc
class _$UserFollowCountCopyWithImpl<$Res, $Val extends UserFollowCount>
    implements $UserFollowCountCopyWith<$Res> {
  _$UserFollowCountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? following = null,
    Object? followers = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      following: null == following
          ? _value.following
          : following // ignore: cast_nullable_to_non_nullable
              as int,
      followers: null == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserFollowCountCopyWith<$Res>
    implements $UserFollowCountCopyWith<$Res> {
  factory _$$_UserFollowCountCopyWith(
          _$_UserFollowCount value, $Res Function(_$_UserFollowCount) then) =
      __$$_UserFollowCountCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonValue('user_id') String userId,
      int following,
      int followers});
}

/// @nodoc
class __$$_UserFollowCountCopyWithImpl<$Res>
    extends _$UserFollowCountCopyWithImpl<$Res, _$_UserFollowCount>
    implements _$$_UserFollowCountCopyWith<$Res> {
  __$$_UserFollowCountCopyWithImpl(
      _$_UserFollowCount _value, $Res Function(_$_UserFollowCount) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? following = null,
    Object? followers = null,
  }) {
    return _then(_$_UserFollowCount(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      following: null == following
          ? _value.following
          : following // ignore: cast_nullable_to_non_nullable
              as int,
      followers: null == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserFollowCount implements _UserFollowCount {
  const _$_UserFollowCount(
      {required this.id,
      @JsonValue('user_id') required this.userId,
      required this.following,
      required this.followers});

  factory _$_UserFollowCount.fromJson(Map<String, dynamic> json) =>
      _$$_UserFollowCountFromJson(json);

  @override
  final String id;
  @override
  @JsonValue('user_id')
  final String userId;
  @override
  final int following;
  @override
  final int followers;

  @override
  String toString() {
    return 'UserFollowCount(id: $id, userId: $userId, following: $following, followers: $followers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserFollowCount &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.following, following) ||
                other.following == following) &&
            (identical(other.followers, followers) ||
                other.followers == followers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, userId, following, followers);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserFollowCountCopyWith<_$_UserFollowCount> get copyWith =>
      __$$_UserFollowCountCopyWithImpl<_$_UserFollowCount>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserFollowCountToJson(
      this,
    );
  }
}

abstract class _UserFollowCount implements UserFollowCount {
  const factory _UserFollowCount(
      {required final String id,
      @JsonValue('user_id') required final String userId,
      required final int following,
      required final int followers}) = _$_UserFollowCount;

  factory _UserFollowCount.fromJson(Map<String, dynamic> json) =
      _$_UserFollowCount.fromJson;

  @override
  String get id;
  @override
  @JsonValue('user_id')
  String get userId;
  @override
  int get following;
  @override
  int get followers;
  @override
  @JsonKey(ignore: true)
  _$$_UserFollowCountCopyWith<_$_UserFollowCount> get copyWith =>
      throw _privateConstructorUsedError;
}
