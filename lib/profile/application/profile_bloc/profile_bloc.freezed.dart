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
    required TResult Function(String userId) loadUser,
    required TResult Function(List<TextPost?> textPost) updateTextPost,
    required TResult Function(List<ComicPost?> comicPost) updateComicPost,
    required TResult Function(List<SavedPost?> savedPosts) updateSavedPosts,
    required TResult Function() followUser,
    required TResult Function() unFollowUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String userId)? loadUser,
    TResult Function(List<TextPost?> textPost)? updateTextPost,
    TResult Function(List<ComicPost?> comicPost)? updateComicPost,
    TResult Function(List<SavedPost?> savedPosts)? updateSavedPosts,
    TResult Function()? followUser,
    TResult Function()? unFollowUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? loadUser,
    TResult Function(List<TextPost?> textPost)? updateTextPost,
    TResult Function(List<ComicPost?> comicPost)? updateComicPost,
    TResult Function(List<SavedPost?> savedPosts)? updateSavedPosts,
    TResult Function()? followUser,
    TResult Function()? unFollowUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadUser value) loadUser,
    required TResult Function(_UpdateTextPost value) updateTextPost,
    required TResult Function(_UpdatePicturePost value) updateComicPost,
    required TResult Function(_UpdateSavedPosts value) updateSavedPosts,
    required TResult Function(_FollowUser value) followUser,
    required TResult Function(_UnFollowUser value) unFollowUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadUser value)? loadUser,
    TResult Function(_UpdateTextPost value)? updateTextPost,
    TResult Function(_UpdatePicturePost value)? updateComicPost,
    TResult Function(_UpdateSavedPosts value)? updateSavedPosts,
    TResult Function(_FollowUser value)? followUser,
    TResult Function(_UnFollowUser value)? unFollowUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadUser value)? loadUser,
    TResult Function(_UpdateTextPost value)? updateTextPost,
    TResult Function(_UpdatePicturePost value)? updateComicPost,
    TResult Function(_UpdateSavedPosts value)? updateSavedPosts,
    TResult Function(_FollowUser value)? followUser,
    TResult Function(_UnFollowUser value)? unFollowUser,
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
  $Res call({String userId});
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
    Object? userId = freezed,
  }) {
    return _then(_$_LoadUser(
      userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LoadUser implements _LoadUser {
  const _$_LoadUser(this.userId);

  @override
  final String userId;

  @override
  String toString() {
    return 'ProfileEvent.loadUser(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadUser &&
            const DeepCollectionEquality().equals(other.userId, userId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(userId));

  @JsonKey(ignore: true)
  @override
  _$$_LoadUserCopyWith<_$_LoadUser> get copyWith =>
      __$$_LoadUserCopyWithImpl<_$_LoadUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) loadUser,
    required TResult Function(List<TextPost?> textPost) updateTextPost,
    required TResult Function(List<ComicPost?> comicPost) updateComicPost,
    required TResult Function(List<SavedPost?> savedPosts) updateSavedPosts,
    required TResult Function() followUser,
    required TResult Function() unFollowUser,
  }) {
    return loadUser(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String userId)? loadUser,
    TResult Function(List<TextPost?> textPost)? updateTextPost,
    TResult Function(List<ComicPost?> comicPost)? updateComicPost,
    TResult Function(List<SavedPost?> savedPosts)? updateSavedPosts,
    TResult Function()? followUser,
    TResult Function()? unFollowUser,
  }) {
    return loadUser?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? loadUser,
    TResult Function(List<TextPost?> textPost)? updateTextPost,
    TResult Function(List<ComicPost?> comicPost)? updateComicPost,
    TResult Function(List<SavedPost?> savedPosts)? updateSavedPosts,
    TResult Function()? followUser,
    TResult Function()? unFollowUser,
    required TResult orElse(),
  }) {
    if (loadUser != null) {
      return loadUser(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadUser value) loadUser,
    required TResult Function(_UpdateTextPost value) updateTextPost,
    required TResult Function(_UpdatePicturePost value) updateComicPost,
    required TResult Function(_UpdateSavedPosts value) updateSavedPosts,
    required TResult Function(_FollowUser value) followUser,
    required TResult Function(_UnFollowUser value) unFollowUser,
  }) {
    return loadUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadUser value)? loadUser,
    TResult Function(_UpdateTextPost value)? updateTextPost,
    TResult Function(_UpdatePicturePost value)? updateComicPost,
    TResult Function(_UpdateSavedPosts value)? updateSavedPosts,
    TResult Function(_FollowUser value)? followUser,
    TResult Function(_UnFollowUser value)? unFollowUser,
  }) {
    return loadUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadUser value)? loadUser,
    TResult Function(_UpdateTextPost value)? updateTextPost,
    TResult Function(_UpdatePicturePost value)? updateComicPost,
    TResult Function(_UpdateSavedPosts value)? updateSavedPosts,
    TResult Function(_FollowUser value)? followUser,
    TResult Function(_UnFollowUser value)? unFollowUser,
    required TResult orElse(),
  }) {
    if (loadUser != null) {
      return loadUser(this);
    }
    return orElse();
  }
}

abstract class _LoadUser implements ProfileEvent {
  const factory _LoadUser(final String userId) = _$_LoadUser;

  String get userId;
  @JsonKey(ignore: true)
  _$$_LoadUserCopyWith<_$_LoadUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateTextPostCopyWith<$Res> {
  factory _$$_UpdateTextPostCopyWith(
          _$_UpdateTextPost value, $Res Function(_$_UpdateTextPost) then) =
      __$$_UpdateTextPostCopyWithImpl<$Res>;
  $Res call({List<TextPost?> textPost});
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
              as List<TextPost?>,
    ));
  }
}

/// @nodoc

class _$_UpdateTextPost implements _UpdateTextPost {
  const _$_UpdateTextPost(final List<TextPost?> textPost)
      : _textPost = textPost;

  final List<TextPost?> _textPost;
  @override
  List<TextPost?> get textPost {
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
    required TResult Function(String userId) loadUser,
    required TResult Function(List<TextPost?> textPost) updateTextPost,
    required TResult Function(List<ComicPost?> comicPost) updateComicPost,
    required TResult Function(List<SavedPost?> savedPosts) updateSavedPosts,
    required TResult Function() followUser,
    required TResult Function() unFollowUser,
  }) {
    return updateTextPost(textPost);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String userId)? loadUser,
    TResult Function(List<TextPost?> textPost)? updateTextPost,
    TResult Function(List<ComicPost?> comicPost)? updateComicPost,
    TResult Function(List<SavedPost?> savedPosts)? updateSavedPosts,
    TResult Function()? followUser,
    TResult Function()? unFollowUser,
  }) {
    return updateTextPost?.call(textPost);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? loadUser,
    TResult Function(List<TextPost?> textPost)? updateTextPost,
    TResult Function(List<ComicPost?> comicPost)? updateComicPost,
    TResult Function(List<SavedPost?> savedPosts)? updateSavedPosts,
    TResult Function()? followUser,
    TResult Function()? unFollowUser,
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
    required TResult Function(_UpdatePicturePost value) updateComicPost,
    required TResult Function(_UpdateSavedPosts value) updateSavedPosts,
    required TResult Function(_FollowUser value) followUser,
    required TResult Function(_UnFollowUser value) unFollowUser,
  }) {
    return updateTextPost(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadUser value)? loadUser,
    TResult Function(_UpdateTextPost value)? updateTextPost,
    TResult Function(_UpdatePicturePost value)? updateComicPost,
    TResult Function(_UpdateSavedPosts value)? updateSavedPosts,
    TResult Function(_FollowUser value)? followUser,
    TResult Function(_UnFollowUser value)? unFollowUser,
  }) {
    return updateTextPost?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadUser value)? loadUser,
    TResult Function(_UpdateTextPost value)? updateTextPost,
    TResult Function(_UpdatePicturePost value)? updateComicPost,
    TResult Function(_UpdateSavedPosts value)? updateSavedPosts,
    TResult Function(_FollowUser value)? followUser,
    TResult Function(_UnFollowUser value)? unFollowUser,
    required TResult orElse(),
  }) {
    if (updateTextPost != null) {
      return updateTextPost(this);
    }
    return orElse();
  }
}

abstract class _UpdateTextPost implements ProfileEvent {
  const factory _UpdateTextPost(final List<TextPost?> textPost) =
      _$_UpdateTextPost;

  List<TextPost?> get textPost;
  @JsonKey(ignore: true)
  _$$_UpdateTextPostCopyWith<_$_UpdateTextPost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdatePicturePostCopyWith<$Res> {
  factory _$$_UpdatePicturePostCopyWith(_$_UpdatePicturePost value,
          $Res Function(_$_UpdatePicturePost) then) =
      __$$_UpdatePicturePostCopyWithImpl<$Res>;
  $Res call({List<ComicPost?> comicPost});
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
    Object? comicPost = freezed,
  }) {
    return _then(_$_UpdatePicturePost(
      comicPost == freezed
          ? _value._comicPost
          : comicPost // ignore: cast_nullable_to_non_nullable
              as List<ComicPost?>,
    ));
  }
}

/// @nodoc

class _$_UpdatePicturePost implements _UpdatePicturePost {
  const _$_UpdatePicturePost(final List<ComicPost?> comicPost)
      : _comicPost = comicPost;

  final List<ComicPost?> _comicPost;
  @override
  List<ComicPost?> get comicPost {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comicPost);
  }

  @override
  String toString() {
    return 'ProfileEvent.updateComicPost(comicPost: $comicPost)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdatePicturePost &&
            const DeepCollectionEquality()
                .equals(other._comicPost, _comicPost));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_comicPost));

  @JsonKey(ignore: true)
  @override
  _$$_UpdatePicturePostCopyWith<_$_UpdatePicturePost> get copyWith =>
      __$$_UpdatePicturePostCopyWithImpl<_$_UpdatePicturePost>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) loadUser,
    required TResult Function(List<TextPost?> textPost) updateTextPost,
    required TResult Function(List<ComicPost?> comicPost) updateComicPost,
    required TResult Function(List<SavedPost?> savedPosts) updateSavedPosts,
    required TResult Function() followUser,
    required TResult Function() unFollowUser,
  }) {
    return updateComicPost(comicPost);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String userId)? loadUser,
    TResult Function(List<TextPost?> textPost)? updateTextPost,
    TResult Function(List<ComicPost?> comicPost)? updateComicPost,
    TResult Function(List<SavedPost?> savedPosts)? updateSavedPosts,
    TResult Function()? followUser,
    TResult Function()? unFollowUser,
  }) {
    return updateComicPost?.call(comicPost);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? loadUser,
    TResult Function(List<TextPost?> textPost)? updateTextPost,
    TResult Function(List<ComicPost?> comicPost)? updateComicPost,
    TResult Function(List<SavedPost?> savedPosts)? updateSavedPosts,
    TResult Function()? followUser,
    TResult Function()? unFollowUser,
    required TResult orElse(),
  }) {
    if (updateComicPost != null) {
      return updateComicPost(comicPost);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadUser value) loadUser,
    required TResult Function(_UpdateTextPost value) updateTextPost,
    required TResult Function(_UpdatePicturePost value) updateComicPost,
    required TResult Function(_UpdateSavedPosts value) updateSavedPosts,
    required TResult Function(_FollowUser value) followUser,
    required TResult Function(_UnFollowUser value) unFollowUser,
  }) {
    return updateComicPost(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadUser value)? loadUser,
    TResult Function(_UpdateTextPost value)? updateTextPost,
    TResult Function(_UpdatePicturePost value)? updateComicPost,
    TResult Function(_UpdateSavedPosts value)? updateSavedPosts,
    TResult Function(_FollowUser value)? followUser,
    TResult Function(_UnFollowUser value)? unFollowUser,
  }) {
    return updateComicPost?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadUser value)? loadUser,
    TResult Function(_UpdateTextPost value)? updateTextPost,
    TResult Function(_UpdatePicturePost value)? updateComicPost,
    TResult Function(_UpdateSavedPosts value)? updateSavedPosts,
    TResult Function(_FollowUser value)? followUser,
    TResult Function(_UnFollowUser value)? unFollowUser,
    required TResult orElse(),
  }) {
    if (updateComicPost != null) {
      return updateComicPost(this);
    }
    return orElse();
  }
}

abstract class _UpdatePicturePost implements ProfileEvent {
  const factory _UpdatePicturePost(final List<ComicPost?> comicPost) =
      _$_UpdatePicturePost;

  List<ComicPost?> get comicPost;
  @JsonKey(ignore: true)
  _$$_UpdatePicturePostCopyWith<_$_UpdatePicturePost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateSavedPostsCopyWith<$Res> {
  factory _$$_UpdateSavedPostsCopyWith(
          _$_UpdateSavedPosts value, $Res Function(_$_UpdateSavedPosts) then) =
      __$$_UpdateSavedPostsCopyWithImpl<$Res>;
  $Res call({List<SavedPost?> savedPosts});
}

/// @nodoc
class __$$_UpdateSavedPostsCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res>
    implements _$$_UpdateSavedPostsCopyWith<$Res> {
  __$$_UpdateSavedPostsCopyWithImpl(
      _$_UpdateSavedPosts _value, $Res Function(_$_UpdateSavedPosts) _then)
      : super(_value, (v) => _then(v as _$_UpdateSavedPosts));

  @override
  _$_UpdateSavedPosts get _value => super._value as _$_UpdateSavedPosts;

  @override
  $Res call({
    Object? savedPosts = freezed,
  }) {
    return _then(_$_UpdateSavedPosts(
      savedPosts == freezed
          ? _value._savedPosts
          : savedPosts // ignore: cast_nullable_to_non_nullable
              as List<SavedPost?>,
    ));
  }
}

/// @nodoc

class _$_UpdateSavedPosts implements _UpdateSavedPosts {
  const _$_UpdateSavedPosts(final List<SavedPost?> savedPosts)
      : _savedPosts = savedPosts;

  final List<SavedPost?> _savedPosts;
  @override
  List<SavedPost?> get savedPosts {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_savedPosts);
  }

  @override
  String toString() {
    return 'ProfileEvent.updateSavedPosts(savedPosts: $savedPosts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateSavedPosts &&
            const DeepCollectionEquality()
                .equals(other._savedPosts, _savedPosts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_savedPosts));

  @JsonKey(ignore: true)
  @override
  _$$_UpdateSavedPostsCopyWith<_$_UpdateSavedPosts> get copyWith =>
      __$$_UpdateSavedPostsCopyWithImpl<_$_UpdateSavedPosts>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) loadUser,
    required TResult Function(List<TextPost?> textPost) updateTextPost,
    required TResult Function(List<ComicPost?> comicPost) updateComicPost,
    required TResult Function(List<SavedPost?> savedPosts) updateSavedPosts,
    required TResult Function() followUser,
    required TResult Function() unFollowUser,
  }) {
    return updateSavedPosts(savedPosts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String userId)? loadUser,
    TResult Function(List<TextPost?> textPost)? updateTextPost,
    TResult Function(List<ComicPost?> comicPost)? updateComicPost,
    TResult Function(List<SavedPost?> savedPosts)? updateSavedPosts,
    TResult Function()? followUser,
    TResult Function()? unFollowUser,
  }) {
    return updateSavedPosts?.call(savedPosts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? loadUser,
    TResult Function(List<TextPost?> textPost)? updateTextPost,
    TResult Function(List<ComicPost?> comicPost)? updateComicPost,
    TResult Function(List<SavedPost?> savedPosts)? updateSavedPosts,
    TResult Function()? followUser,
    TResult Function()? unFollowUser,
    required TResult orElse(),
  }) {
    if (updateSavedPosts != null) {
      return updateSavedPosts(savedPosts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadUser value) loadUser,
    required TResult Function(_UpdateTextPost value) updateTextPost,
    required TResult Function(_UpdatePicturePost value) updateComicPost,
    required TResult Function(_UpdateSavedPosts value) updateSavedPosts,
    required TResult Function(_FollowUser value) followUser,
    required TResult Function(_UnFollowUser value) unFollowUser,
  }) {
    return updateSavedPosts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadUser value)? loadUser,
    TResult Function(_UpdateTextPost value)? updateTextPost,
    TResult Function(_UpdatePicturePost value)? updateComicPost,
    TResult Function(_UpdateSavedPosts value)? updateSavedPosts,
    TResult Function(_FollowUser value)? followUser,
    TResult Function(_UnFollowUser value)? unFollowUser,
  }) {
    return updateSavedPosts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadUser value)? loadUser,
    TResult Function(_UpdateTextPost value)? updateTextPost,
    TResult Function(_UpdatePicturePost value)? updateComicPost,
    TResult Function(_UpdateSavedPosts value)? updateSavedPosts,
    TResult Function(_FollowUser value)? followUser,
    TResult Function(_UnFollowUser value)? unFollowUser,
    required TResult orElse(),
  }) {
    if (updateSavedPosts != null) {
      return updateSavedPosts(this);
    }
    return orElse();
  }
}

abstract class _UpdateSavedPosts implements ProfileEvent {
  const factory _UpdateSavedPosts(final List<SavedPost?> savedPosts) =
      _$_UpdateSavedPosts;

  List<SavedPost?> get savedPosts;
  @JsonKey(ignore: true)
  _$$_UpdateSavedPostsCopyWith<_$_UpdateSavedPosts> get copyWith =>
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
    required TResult Function(String userId) loadUser,
    required TResult Function(List<TextPost?> textPost) updateTextPost,
    required TResult Function(List<ComicPost?> comicPost) updateComicPost,
    required TResult Function(List<SavedPost?> savedPosts) updateSavedPosts,
    required TResult Function() followUser,
    required TResult Function() unFollowUser,
  }) {
    return followUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String userId)? loadUser,
    TResult Function(List<TextPost?> textPost)? updateTextPost,
    TResult Function(List<ComicPost?> comicPost)? updateComicPost,
    TResult Function(List<SavedPost?> savedPosts)? updateSavedPosts,
    TResult Function()? followUser,
    TResult Function()? unFollowUser,
  }) {
    return followUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? loadUser,
    TResult Function(List<TextPost?> textPost)? updateTextPost,
    TResult Function(List<ComicPost?> comicPost)? updateComicPost,
    TResult Function(List<SavedPost?> savedPosts)? updateSavedPosts,
    TResult Function()? followUser,
    TResult Function()? unFollowUser,
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
    required TResult Function(_UpdatePicturePost value) updateComicPost,
    required TResult Function(_UpdateSavedPosts value) updateSavedPosts,
    required TResult Function(_FollowUser value) followUser,
    required TResult Function(_UnFollowUser value) unFollowUser,
  }) {
    return followUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadUser value)? loadUser,
    TResult Function(_UpdateTextPost value)? updateTextPost,
    TResult Function(_UpdatePicturePost value)? updateComicPost,
    TResult Function(_UpdateSavedPosts value)? updateSavedPosts,
    TResult Function(_FollowUser value)? followUser,
    TResult Function(_UnFollowUser value)? unFollowUser,
  }) {
    return followUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadUser value)? loadUser,
    TResult Function(_UpdateTextPost value)? updateTextPost,
    TResult Function(_UpdatePicturePost value)? updateComicPost,
    TResult Function(_UpdateSavedPosts value)? updateSavedPosts,
    TResult Function(_FollowUser value)? followUser,
    TResult Function(_UnFollowUser value)? unFollowUser,
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
abstract class _$$_UnFollowUserCopyWith<$Res> {
  factory _$$_UnFollowUserCopyWith(
          _$_UnFollowUser value, $Res Function(_$_UnFollowUser) then) =
      __$$_UnFollowUserCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UnFollowUserCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res>
    implements _$$_UnFollowUserCopyWith<$Res> {
  __$$_UnFollowUserCopyWithImpl(
      _$_UnFollowUser _value, $Res Function(_$_UnFollowUser) _then)
      : super(_value, (v) => _then(v as _$_UnFollowUser));

  @override
  _$_UnFollowUser get _value => super._value as _$_UnFollowUser;
}

/// @nodoc

class _$_UnFollowUser implements _UnFollowUser {
  const _$_UnFollowUser();

  @override
  String toString() {
    return 'ProfileEvent.unFollowUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UnFollowUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) loadUser,
    required TResult Function(List<TextPost?> textPost) updateTextPost,
    required TResult Function(List<ComicPost?> comicPost) updateComicPost,
    required TResult Function(List<SavedPost?> savedPosts) updateSavedPosts,
    required TResult Function() followUser,
    required TResult Function() unFollowUser,
  }) {
    return unFollowUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String userId)? loadUser,
    TResult Function(List<TextPost?> textPost)? updateTextPost,
    TResult Function(List<ComicPost?> comicPost)? updateComicPost,
    TResult Function(List<SavedPost?> savedPosts)? updateSavedPosts,
    TResult Function()? followUser,
    TResult Function()? unFollowUser,
  }) {
    return unFollowUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? loadUser,
    TResult Function(List<TextPost?> textPost)? updateTextPost,
    TResult Function(List<ComicPost?> comicPost)? updateComicPost,
    TResult Function(List<SavedPost?> savedPosts)? updateSavedPosts,
    TResult Function()? followUser,
    TResult Function()? unFollowUser,
    required TResult orElse(),
  }) {
    if (unFollowUser != null) {
      return unFollowUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadUser value) loadUser,
    required TResult Function(_UpdateTextPost value) updateTextPost,
    required TResult Function(_UpdatePicturePost value) updateComicPost,
    required TResult Function(_UpdateSavedPosts value) updateSavedPosts,
    required TResult Function(_FollowUser value) followUser,
    required TResult Function(_UnFollowUser value) unFollowUser,
  }) {
    return unFollowUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadUser value)? loadUser,
    TResult Function(_UpdateTextPost value)? updateTextPost,
    TResult Function(_UpdatePicturePost value)? updateComicPost,
    TResult Function(_UpdateSavedPosts value)? updateSavedPosts,
    TResult Function(_FollowUser value)? followUser,
    TResult Function(_UnFollowUser value)? unFollowUser,
  }) {
    return unFollowUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadUser value)? loadUser,
    TResult Function(_UpdateTextPost value)? updateTextPost,
    TResult Function(_UpdatePicturePost value)? updateComicPost,
    TResult Function(_UpdateSavedPosts value)? updateSavedPosts,
    TResult Function(_FollowUser value)? followUser,
    TResult Function(_UnFollowUser value)? unFollowUser,
    required TResult orElse(),
  }) {
    if (unFollowUser != null) {
      return unFollowUser(this);
    }
    return orElse();
  }
}

abstract class _UnFollowUser implements ProfileEvent {
  const factory _UnFollowUser() = _$_UnFollowUser;
}

/// @nodoc
mixin _$ProfileState {
  User get user => throw _privateConstructorUsedError;
  List<TextPost?> get textPost => throw _privateConstructorUsedError;
  List<ComicPost?> get picturePost =>
      throw _privateConstructorUsedError; //required List<ReImagined?> reWrite,
  List<SavedPost?> get savedPosts =>
      throw _privateConstructorUsedError; //todo: rewrite post for profile state
  bool get isCurrentUser => throw _privateConstructorUsedError;
  bool get isFollowing => throw _privateConstructorUsedError;
  ProfileStatus get status => throw _privateConstructorUsedError;
  Exception? get failure => throw _privateConstructorUsedError;

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
      List<TextPost?> textPost,
      List<ComicPost?> picturePost,
      List<SavedPost?> savedPosts,
      bool isCurrentUser,
      bool isFollowing,
      ProfileStatus status,
      Exception? failure});

  $UserCopyWith<$Res> get user;
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
    Object? savedPosts = freezed,
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
              as List<TextPost?>,
      picturePost: picturePost == freezed
          ? _value.picturePost
          : picturePost // ignore: cast_nullable_to_non_nullable
              as List<ComicPost?>,
      savedPosts: savedPosts == freezed
          ? _value.savedPosts
          : savedPosts // ignore: cast_nullable_to_non_nullable
              as List<SavedPost?>,
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
              as Exception?,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
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
      List<TextPost?> textPost,
      List<ComicPost?> picturePost,
      List<SavedPost?> savedPosts,
      bool isCurrentUser,
      bool isFollowing,
      ProfileStatus status,
      Exception? failure});

  @override
  $UserCopyWith<$Res> get user;
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
    Object? savedPosts = freezed,
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
              as List<TextPost?>,
      picturePost: picturePost == freezed
          ? _value._picturePost
          : picturePost // ignore: cast_nullable_to_non_nullable
              as List<ComicPost?>,
      savedPosts: savedPosts == freezed
          ? _value._savedPosts
          : savedPosts // ignore: cast_nullable_to_non_nullable
              as List<SavedPost?>,
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
              as Exception?,
    ));
  }
}

/// @nodoc

class _$_ProfileState implements _ProfileState {
  const _$_ProfileState(
      {required this.user,
      required final List<TextPost?> textPost,
      required final List<ComicPost?> picturePost,
      required final List<SavedPost?> savedPosts,
      required this.isCurrentUser,
      required this.isFollowing,
      required this.status,
      required this.failure})
      : _textPost = textPost,
        _picturePost = picturePost,
        _savedPosts = savedPosts;

  @override
  final User user;
  final List<TextPost?> _textPost;
  @override
  List<TextPost?> get textPost {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_textPost);
  }

  final List<ComicPost?> _picturePost;
  @override
  List<ComicPost?> get picturePost {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_picturePost);
  }

//required List<ReImagined?> reWrite,
  final List<SavedPost?> _savedPosts;
//required List<ReImagined?> reWrite,
  @override
  List<SavedPost?> get savedPosts {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_savedPosts);
  }

//todo: rewrite post for profile state
  @override
  final bool isCurrentUser;
  @override
  final bool isFollowing;
  @override
  final ProfileStatus status;
  @override
  final Exception? failure;

  @override
  String toString() {
    return 'ProfileState(user: $user, textPost: $textPost, picturePost: $picturePost, savedPosts: $savedPosts, isCurrentUser: $isCurrentUser, isFollowing: $isFollowing, status: $status, failure: $failure)';
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
                .equals(other._savedPosts, _savedPosts) &&
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
      const DeepCollectionEquality().hash(_savedPosts),
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
      required final List<TextPost?> textPost,
      required final List<ComicPost?> picturePost,
      required final List<SavedPost?> savedPosts,
      required final bool isCurrentUser,
      required final bool isFollowing,
      required final ProfileStatus status,
      required final Exception? failure}) = _$_ProfileState;

  @override
  User get user;
  @override
  List<TextPost?> get textPost;
  @override
  List<ComicPost?> get picturePost;
  @override //required List<ReImagined?> reWrite,
  List<SavedPost?> get savedPosts;
  @override //todo: rewrite post for profile state
  bool get isCurrentUser;
  @override
  bool get isFollowing;
  @override
  ProfileStatus get status;
  @override
  Exception? get failure;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileStateCopyWith<_$_ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}
