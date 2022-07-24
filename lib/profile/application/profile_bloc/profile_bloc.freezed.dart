// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userid) loadUser,
    required TResult Function(List<TextPost> textPost) updateTextPost,
    required TResult Function(List<PicturePost> picturePost) updatePicturePost,
    required TResult Function() followUser,
    required TResult Function() unfollowUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String userid)? loadUser,
    TResult Function(List<TextPost> textPost)? updateTextPost,
    TResult Function(List<PicturePost> picturePost)? updatePicturePost,
    TResult Function()? followUser,
    TResult Function()? unfollowUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userid)? loadUser,
    TResult Function(List<TextPost> textPost)? updateTextPost,
    TResult Function(List<PicturePost> picturePost)? updatePicturePost,
    TResult Function()? followUser,
    TResult Function()? unfollowUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadUser value) loadUser,
    required TResult Function(_UpdateTextPost value) updateTextPost,
    required TResult Function(_UpdatePicturePost value) updatePicturePost,
    required TResult Function(_FollowUser value) followUser,
    required TResult Function(_UnfollowUser value) unfollowUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadUser value)? loadUser,
    TResult Function(_UpdateTextPost value)? updateTextPost,
    TResult Function(_UpdatePicturePost value)? updatePicturePost,
    TResult Function(_FollowUser value)? followUser,
    TResult Function(_UnfollowUser value)? unfollowUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadUser value)? loadUser,
    TResult Function(_UpdateTextPost value)? updateTextPost,
    TResult Function(_UpdatePicturePost value)? updatePicturePost,
    TResult Function(_FollowUser value)? followUser,
    TResult Function(_UnfollowUser value)? unfollowUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res> implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  final ProfileEvent _value;
  // ignore: unused_field
  final $Res Function(ProfileEvent) _then;
}

/// @nodoc
abstract class _$$_LoadUserCopyWith<$Res> {
  factory _$$_LoadUserCopyWith(
          _$_LoadUser value, $Res Function(_$_LoadUser) then) =
      __$$_LoadUserCopyWithImpl<$Res>;
  $Res call({String userid});
}

/// @nodoc
class __$$_LoadUserCopyWithImpl<$Res> extends _$ProfileEventCopyWithImpl<$Res>
    implements _$$_LoadUserCopyWith<$Res> {
  __$$_LoadUserCopyWithImpl(
      _$_LoadUser _value, $Res Function(_$_LoadUser) _then)
      : super(_value, (v) => _then(v as _$_LoadUser));

  @override
  _$_LoadUser get _value => super._value as _$_LoadUser;

  @override
  $Res call({
    Object? userid = freezed,
  }) {
    return _then(_$_LoadUser(
      userid == freezed
          ? _value.userid
          : userid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LoadUser implements _LoadUser {
  const _$_LoadUser(this.userid);

  @override
  final String userid;

  @override
  String toString() {
    return 'ProfileEvent.loadUser(userid: $userid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadUser &&
            const DeepCollectionEquality().equals(other.userid, userid));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(userid));

  @JsonKey(ignore: true)
  @override
  _$$_LoadUserCopyWith<_$_LoadUser> get copyWith =>
      __$$_LoadUserCopyWithImpl<_$_LoadUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userid) loadUser,
    required TResult Function(List<TextPost> textPost) updateTextPost,
    required TResult Function(List<PicturePost> picturePost) updatePicturePost,
    required TResult Function() followUser,
    required TResult Function() unfollowUser,
  }) {
    return loadUser(userid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String userid)? loadUser,
    TResult Function(List<TextPost> textPost)? updateTextPost,
    TResult Function(List<PicturePost> picturePost)? updatePicturePost,
    TResult Function()? followUser,
    TResult Function()? unfollowUser,
  }) {
    return loadUser?.call(userid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userid)? loadUser,
    TResult Function(List<TextPost> textPost)? updateTextPost,
    TResult Function(List<PicturePost> picturePost)? updatePicturePost,
    TResult Function()? followUser,
    TResult Function()? unfollowUser,
    required TResult orElse(),
  }) {
    if (loadUser != null) {
      return loadUser(userid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadUser value) loadUser,
    required TResult Function(_UpdateTextPost value) updateTextPost,
    required TResult Function(_UpdatePicturePost value) updatePicturePost,
    required TResult Function(_FollowUser value) followUser,
    required TResult Function(_UnfollowUser value) unfollowUser,
  }) {
    return loadUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadUser value)? loadUser,
    TResult Function(_UpdateTextPost value)? updateTextPost,
    TResult Function(_UpdatePicturePost value)? updatePicturePost,
    TResult Function(_FollowUser value)? followUser,
    TResult Function(_UnfollowUser value)? unfollowUser,
  }) {
    return loadUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadUser value)? loadUser,
    TResult Function(_UpdateTextPost value)? updateTextPost,
    TResult Function(_UpdatePicturePost value)? updatePicturePost,
    TResult Function(_FollowUser value)? followUser,
    TResult Function(_UnfollowUser value)? unfollowUser,
    required TResult orElse(),
  }) {
    if (loadUser != null) {
      return loadUser(this);
    }
    return orElse();
  }
}

abstract class _LoadUser implements ProfileEvent {
  const factory _LoadUser(final String userid) = _$_LoadUser;

  String get userid => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_LoadUserCopyWith<_$_LoadUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateTextPostCopyWith<$Res> {
  factory _$$_UpdateTextPostCopyWith(
          _$_UpdateTextPost value, $Res Function(_$_UpdateTextPost) then) =
      __$$_UpdateTextPostCopyWithImpl<$Res>;
  $Res call({List<TextPost> textPost});
}

/// @nodoc
class __$$_UpdateTextPostCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res>
    implements _$$_UpdateTextPostCopyWith<$Res> {
  __$$_UpdateTextPostCopyWithImpl(
      _$_UpdateTextPost _value, $Res Function(_$_UpdateTextPost) _then)
      : super(_value, (v) => _then(v as _$_UpdateTextPost));

  @override
  _$_UpdateTextPost get _value => super._value as _$_UpdateTextPost;

  @override
  $Res call({
    Object? textPost = freezed,
  }) {
    return _then(_$_UpdateTextPost(
      textPost == freezed
          ? _value._textPost
          : textPost // ignore: cast_nullable_to_non_nullable
              as List<TextPost>,
    ));
  }
}

/// @nodoc

class _$_UpdateTextPost implements _UpdateTextPost {
  const _$_UpdateTextPost(final List<TextPost> textPost) : _textPost = textPost;

  final List<TextPost> _textPost;
  @override
  List<TextPost> get textPost {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_textPost);
  }

  @override
  String toString() {
    return 'ProfileEvent.updateTextPost(textPost: $textPost)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateTextPost &&
            const DeepCollectionEquality().equals(other._textPost, _textPost));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_textPost));

  @JsonKey(ignore: true)
  @override
  _$$_UpdateTextPostCopyWith<_$_UpdateTextPost> get copyWith =>
      __$$_UpdateTextPostCopyWithImpl<_$_UpdateTextPost>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userid) loadUser,
    required TResult Function(List<TextPost> textPost) updateTextPost,
    required TResult Function(List<PicturePost> picturePost) updatePicturePost,
    required TResult Function() followUser,
    required TResult Function() unfollowUser,
  }) {
    return updateTextPost(textPost);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String userid)? loadUser,
    TResult Function(List<TextPost> textPost)? updateTextPost,
    TResult Function(List<PicturePost> picturePost)? updatePicturePost,
    TResult Function()? followUser,
    TResult Function()? unfollowUser,
  }) {
    return updateTextPost?.call(textPost);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userid)? loadUser,
    TResult Function(List<TextPost> textPost)? updateTextPost,
    TResult Function(List<PicturePost> picturePost)? updatePicturePost,
    TResult Function()? followUser,
    TResult Function()? unfollowUser,
    required TResult orElse(),
  }) {
    if (updateTextPost != null) {
      return updateTextPost(textPost);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadUser value) loadUser,
    required TResult Function(_UpdateTextPost value) updateTextPost,
    required TResult Function(_UpdatePicturePost value) updatePicturePost,
    required TResult Function(_FollowUser value) followUser,
    required TResult Function(_UnfollowUser value) unfollowUser,
  }) {
    return updateTextPost(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadUser value)? loadUser,
    TResult Function(_UpdateTextPost value)? updateTextPost,
    TResult Function(_UpdatePicturePost value)? updatePicturePost,
    TResult Function(_FollowUser value)? followUser,
    TResult Function(_UnfollowUser value)? unfollowUser,
  }) {
    return updateTextPost?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadUser value)? loadUser,
    TResult Function(_UpdateTextPost value)? updateTextPost,
    TResult Function(_UpdatePicturePost value)? updatePicturePost,
    TResult Function(_FollowUser value)? followUser,
    TResult Function(_UnfollowUser value)? unfollowUser,
    required TResult orElse(),
  }) {
    if (updateTextPost != null) {
      return updateTextPost(this);
    }
    return orElse();
  }
}

abstract class _UpdateTextPost implements ProfileEvent {
  const factory _UpdateTextPost(final List<TextPost> textPost) =
      _$_UpdateTextPost;

  List<TextPost> get textPost => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_UpdateTextPostCopyWith<_$_UpdateTextPost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdatePicturePostCopyWith<$Res> {
  factory _$$_UpdatePicturePostCopyWith(_$_UpdatePicturePost value,
          $Res Function(_$_UpdatePicturePost) then) =
      __$$_UpdatePicturePostCopyWithImpl<$Res>;
  $Res call({List<PicturePost> picturePost});
}

/// @nodoc
class __$$_UpdatePicturePostCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res>
    implements _$$_UpdatePicturePostCopyWith<$Res> {
  __$$_UpdatePicturePostCopyWithImpl(
      _$_UpdatePicturePost _value, $Res Function(_$_UpdatePicturePost) _then)
      : super(_value, (v) => _then(v as _$_UpdatePicturePost));

  @override
  _$_UpdatePicturePost get _value => super._value as _$_UpdatePicturePost;

  @override
  $Res call({
    Object? picturePost = freezed,
  }) {
    return _then(_$_UpdatePicturePost(
      picturePost == freezed
          ? _value._picturePost
          : picturePost // ignore: cast_nullable_to_non_nullable
              as List<PicturePost>,
    ));
  }
}

/// @nodoc

class _$_UpdatePicturePost implements _UpdatePicturePost {
  const _$_UpdatePicturePost(final List<PicturePost> picturePost)
      : _picturePost = picturePost;

  final List<PicturePost> _picturePost;
  @override
  List<PicturePost> get picturePost {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_picturePost);
  }

  @override
  String toString() {
    return 'ProfileEvent.updatePicturePost(picturePost: $picturePost)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdatePicturePost &&
            const DeepCollectionEquality()
                .equals(other._picturePost, _picturePost));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_picturePost));

  @JsonKey(ignore: true)
  @override
  _$$_UpdatePicturePostCopyWith<_$_UpdatePicturePost> get copyWith =>
      __$$_UpdatePicturePostCopyWithImpl<_$_UpdatePicturePost>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userid) loadUser,
    required TResult Function(List<TextPost> textPost) updateTextPost,
    required TResult Function(List<PicturePost> picturePost) updatePicturePost,
    required TResult Function() followUser,
    required TResult Function() unfollowUser,
  }) {
    return updatePicturePost(picturePost);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String userid)? loadUser,
    TResult Function(List<TextPost> textPost)? updateTextPost,
    TResult Function(List<PicturePost> picturePost)? updatePicturePost,
    TResult Function()? followUser,
    TResult Function()? unfollowUser,
  }) {
    return updatePicturePost?.call(picturePost);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userid)? loadUser,
    TResult Function(List<TextPost> textPost)? updateTextPost,
    TResult Function(List<PicturePost> picturePost)? updatePicturePost,
    TResult Function()? followUser,
    TResult Function()? unfollowUser,
    required TResult orElse(),
  }) {
    if (updatePicturePost != null) {
      return updatePicturePost(picturePost);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadUser value) loadUser,
    required TResult Function(_UpdateTextPost value) updateTextPost,
    required TResult Function(_UpdatePicturePost value) updatePicturePost,
    required TResult Function(_FollowUser value) followUser,
    required TResult Function(_UnfollowUser value) unfollowUser,
  }) {
    return updatePicturePost(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadUser value)? loadUser,
    TResult Function(_UpdateTextPost value)? updateTextPost,
    TResult Function(_UpdatePicturePost value)? updatePicturePost,
    TResult Function(_FollowUser value)? followUser,
    TResult Function(_UnfollowUser value)? unfollowUser,
  }) {
    return updatePicturePost?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadUser value)? loadUser,
    TResult Function(_UpdateTextPost value)? updateTextPost,
    TResult Function(_UpdatePicturePost value)? updatePicturePost,
    TResult Function(_FollowUser value)? followUser,
    TResult Function(_UnfollowUser value)? unfollowUser,
    required TResult orElse(),
  }) {
    if (updatePicturePost != null) {
      return updatePicturePost(this);
    }
    return orElse();
  }
}

abstract class _UpdatePicturePost implements ProfileEvent {
  const factory _UpdatePicturePost(final List<PicturePost> picturePost) =
      _$_UpdatePicturePost;

  List<PicturePost> get picturePost => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_UpdatePicturePostCopyWith<_$_UpdatePicturePost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FollowUserCopyWith<$Res> {
  factory _$$_FollowUserCopyWith(
          _$_FollowUser value, $Res Function(_$_FollowUser) then) =
      __$$_FollowUserCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FollowUserCopyWithImpl<$Res> extends _$ProfileEventCopyWithImpl<$Res>
    implements _$$_FollowUserCopyWith<$Res> {
  __$$_FollowUserCopyWithImpl(
      _$_FollowUser _value, $Res Function(_$_FollowUser) _then)
      : super(_value, (v) => _then(v as _$_FollowUser));

  @override
  _$_FollowUser get _value => super._value as _$_FollowUser;
}

/// @nodoc

class _$_FollowUser implements _FollowUser {
  const _$_FollowUser();

  @override
  String toString() {
    return 'ProfileEvent.followUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FollowUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userid) loadUser,
    required TResult Function(List<TextPost> textPost) updateTextPost,
    required TResult Function(List<PicturePost> picturePost) updatePicturePost,
    required TResult Function() followUser,
    required TResult Function() unfollowUser,
  }) {
    return followUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String userid)? loadUser,
    TResult Function(List<TextPost> textPost)? updateTextPost,
    TResult Function(List<PicturePost> picturePost)? updatePicturePost,
    TResult Function()? followUser,
    TResult Function()? unfollowUser,
  }) {
    return followUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userid)? loadUser,
    TResult Function(List<TextPost> textPost)? updateTextPost,
    TResult Function(List<PicturePost> picturePost)? updatePicturePost,
    TResult Function()? followUser,
    TResult Function()? unfollowUser,
    required TResult orElse(),
  }) {
    if (followUser != null) {
      return followUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadUser value) loadUser,
    required TResult Function(_UpdateTextPost value) updateTextPost,
    required TResult Function(_UpdatePicturePost value) updatePicturePost,
    required TResult Function(_FollowUser value) followUser,
    required TResult Function(_UnfollowUser value) unfollowUser,
  }) {
    return followUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadUser value)? loadUser,
    TResult Function(_UpdateTextPost value)? updateTextPost,
    TResult Function(_UpdatePicturePost value)? updatePicturePost,
    TResult Function(_FollowUser value)? followUser,
    TResult Function(_UnfollowUser value)? unfollowUser,
  }) {
    return followUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadUser value)? loadUser,
    TResult Function(_UpdateTextPost value)? updateTextPost,
    TResult Function(_UpdatePicturePost value)? updatePicturePost,
    TResult Function(_FollowUser value)? followUser,
    TResult Function(_UnfollowUser value)? unfollowUser,
    required TResult orElse(),
  }) {
    if (followUser != null) {
      return followUser(this);
    }
    return orElse();
  }
}

abstract class _FollowUser implements ProfileEvent {
  const factory _FollowUser() = _$_FollowUser;
}

/// @nodoc
abstract class _$$_UnfollowUserCopyWith<$Res> {
  factory _$$_UnfollowUserCopyWith(
          _$_UnfollowUser value, $Res Function(_$_UnfollowUser) then) =
      __$$_UnfollowUserCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UnfollowUserCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res>
    implements _$$_UnfollowUserCopyWith<$Res> {
  __$$_UnfollowUserCopyWithImpl(
      _$_UnfollowUser _value, $Res Function(_$_UnfollowUser) _then)
      : super(_value, (v) => _then(v as _$_UnfollowUser));

  @override
  _$_UnfollowUser get _value => super._value as _$_UnfollowUser;
}

/// @nodoc

class _$_UnfollowUser implements _UnfollowUser {
  const _$_UnfollowUser();

  @override
  String toString() {
    return 'ProfileEvent.unfollowUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UnfollowUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userid) loadUser,
    required TResult Function(List<TextPost> textPost) updateTextPost,
    required TResult Function(List<PicturePost> picturePost) updatePicturePost,
    required TResult Function() followUser,
    required TResult Function() unfollowUser,
  }) {
    return unfollowUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String userid)? loadUser,
    TResult Function(List<TextPost> textPost)? updateTextPost,
    TResult Function(List<PicturePost> picturePost)? updatePicturePost,
    TResult Function()? followUser,
    TResult Function()? unfollowUser,
  }) {
    return unfollowUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userid)? loadUser,
    TResult Function(List<TextPost> textPost)? updateTextPost,
    TResult Function(List<PicturePost> picturePost)? updatePicturePost,
    TResult Function()? followUser,
    TResult Function()? unfollowUser,
    required TResult orElse(),
  }) {
    if (unfollowUser != null) {
      return unfollowUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadUser value) loadUser,
    required TResult Function(_UpdateTextPost value) updateTextPost,
    required TResult Function(_UpdatePicturePost value) updatePicturePost,
    required TResult Function(_FollowUser value) followUser,
    required TResult Function(_UnfollowUser value) unfollowUser,
  }) {
    return unfollowUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadUser value)? loadUser,
    TResult Function(_UpdateTextPost value)? updateTextPost,
    TResult Function(_UpdatePicturePost value)? updatePicturePost,
    TResult Function(_FollowUser value)? followUser,
    TResult Function(_UnfollowUser value)? unfollowUser,
  }) {
    return unfollowUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadUser value)? loadUser,
    TResult Function(_UpdateTextPost value)? updateTextPost,
    TResult Function(_UpdatePicturePost value)? updatePicturePost,
    TResult Function(_FollowUser value)? followUser,
    TResult Function(_UnfollowUser value)? unfollowUser,
    required TResult orElse(),
  }) {
    if (unfollowUser != null) {
      return unfollowUser(this);
    }
    return orElse();
  }
}

abstract class _UnfollowUser implements ProfileEvent {
  const factory _UnfollowUser() = _$_UnfollowUser;
}

/// @nodoc
mixin _$ProfileState {
  User get user => throw _privateConstructorUsedError;
  List<TextPost> get textPost => throw _privateConstructorUsedError;
  List<PicturePost> get picturePost =>
      throw _privateConstructorUsedError; //required List<Rewrite> reWrite,
//todo: rewrite post for profile state
  bool get isCurrentUser => throw _privateConstructorUsedError;
  bool get isFollowing => throw _privateConstructorUsedError;
  ProfileStatus get status => throw _privateConstructorUsedError;
  GeatFailure get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileStateCopyWith<ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res>;
  $Res call(
      {User user,
      List<TextPost> textPost,
      List<PicturePost> picturePost,
      bool isCurrentUser,
      bool isFollowing,
      ProfileStatus status,
      GeatFailure failure});

  $GeatFailureCopyWith<$Res> get failure;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res> implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  final ProfileState _value;
  // ignore: unused_field
  final $Res Function(ProfileState) _then;

  @override
  $Res call({
    Object? user = freezed,
    Object? textPost = freezed,
    Object? picturePost = freezed,
    Object? isCurrentUser = freezed,
    Object? isFollowing = freezed,
    Object? status = freezed,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      textPost: textPost == freezed
          ? _value.textPost
          : textPost // ignore: cast_nullable_to_non_nullable
              as List<TextPost>,
      picturePost: picturePost == freezed
          ? _value.picturePost
          : picturePost // ignore: cast_nullable_to_non_nullable
              as List<PicturePost>,
      isCurrentUser: isCurrentUser == freezed
          ? _value.isCurrentUser
          : isCurrentUser // ignore: cast_nullable_to_non_nullable
              as bool,
      isFollowing: isFollowing == freezed
          ? _value.isFollowing
          : isFollowing // ignore: cast_nullable_to_non_nullable
              as bool,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProfileStatus,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as GeatFailure,
    ));
  }

  @override
  $GeatFailureCopyWith<$Res> get failure {
    return $GeatFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
abstract class _$$_ProfileStateCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$$_ProfileStateCopyWith(
          _$_ProfileState value, $Res Function(_$_ProfileState) then) =
      __$$_ProfileStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {User user,
      List<TextPost> textPost,
      List<PicturePost> picturePost,
      bool isCurrentUser,
      bool isFollowing,
      ProfileStatus status,
      GeatFailure failure});

  @override
  $GeatFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_ProfileStateCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res>
    implements _$$_ProfileStateCopyWith<$Res> {
  __$$_ProfileStateCopyWithImpl(
      _$_ProfileState _value, $Res Function(_$_ProfileState) _then)
      : super(_value, (v) => _then(v as _$_ProfileState));

  @override
  _$_ProfileState get _value => super._value as _$_ProfileState;

  @override
  $Res call({
    Object? user = freezed,
    Object? textPost = freezed,
    Object? picturePost = freezed,
    Object? isCurrentUser = freezed,
    Object? isFollowing = freezed,
    Object? status = freezed,
    Object? failure = freezed,
  }) {
    return _then(_$_ProfileState(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      textPost: textPost == freezed
          ? _value._textPost
          : textPost // ignore: cast_nullable_to_non_nullable
              as List<TextPost>,
      picturePost: picturePost == freezed
          ? _value._picturePost
          : picturePost // ignore: cast_nullable_to_non_nullable
              as List<PicturePost>,
      isCurrentUser: isCurrentUser == freezed
          ? _value.isCurrentUser
          : isCurrentUser // ignore: cast_nullable_to_non_nullable
              as bool,
      isFollowing: isFollowing == freezed
          ? _value.isFollowing
          : isFollowing // ignore: cast_nullable_to_non_nullable
              as bool,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProfileStatus,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as GeatFailure,
    ));
  }
}

/// @nodoc

class _$_ProfileState implements _ProfileState {
  const _$_ProfileState(
      {required this.user,
      required final List<TextPost> textPost,
      required final List<PicturePost> picturePost,
      required this.isCurrentUser,
      required this.isFollowing,
      required this.status,
      required this.failure})
      : _textPost = textPost,
        _picturePost = picturePost;

  @override
  final User user;
  final List<TextPost> _textPost;
  @override
  List<TextPost> get textPost {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_textPost);
  }

  final List<PicturePost> _picturePost;
  @override
  List<PicturePost> get picturePost {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_picturePost);
  }

//required List<Rewrite> reWrite,
//todo: rewrite post for profile state
  @override
  final bool isCurrentUser;
  @override
  final bool isFollowing;
  @override
  final ProfileStatus status;
  @override
  final GeatFailure failure;

  @override
  String toString() {
    return 'ProfileState(user: $user, textPost: $textPost, picturePost: $picturePost, isCurrentUser: $isCurrentUser, isFollowing: $isFollowing, status: $status, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileState &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality().equals(other._textPost, _textPost) &&
            const DeepCollectionEquality()
                .equals(other._picturePost, _picturePost) &&
            const DeepCollectionEquality()
                .equals(other.isCurrentUser, isCurrentUser) &&
            const DeepCollectionEquality()
                .equals(other.isFollowing, isFollowing) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(_textPost),
      const DeepCollectionEquality().hash(_picturePost),
      const DeepCollectionEquality().hash(isCurrentUser),
      const DeepCollectionEquality().hash(isFollowing),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$$_ProfileStateCopyWith<_$_ProfileState> get copyWith =>
      __$$_ProfileStateCopyWithImpl<_$_ProfileState>(this, _$identity);
}

abstract class _ProfileState implements ProfileState {
  const factory _ProfileState(
      {required final User user,
      required final List<TextPost> textPost,
      required final List<PicturePost> picturePost,
      required final bool isCurrentUser,
      required final bool isFollowing,
      required final ProfileStatus status,
      required final GeatFailure failure}) = _$_ProfileState;

  @override
  User get user => throw _privateConstructorUsedError;
  @override
  List<TextPost> get textPost => throw _privateConstructorUsedError;
  @override
  List<PicturePost> get picturePost => throw _privateConstructorUsedError;
  @override //required List<Rewrite> reWrite,
//todo: rewrite post for profile state
  bool get isCurrentUser => throw _privateConstructorUsedError;
  @override
  bool get isFollowing => throw _privateConstructorUsedError;
  @override
  ProfileStatus get status => throw _privateConstructorUsedError;
  @override
  GeatFailure get failure => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileStateCopyWith<_$_ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}
