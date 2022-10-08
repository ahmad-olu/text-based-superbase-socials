// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'all_feed_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AllFeedEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchAllPost,
    required TResult Function(List<TextPost?> textPost) updateAllTextPost,
    required TResult Function(List<ComicPost?> comicPost) updateAllComicPost,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchAllPost,
    TResult Function(List<TextPost?> textPost)? updateAllTextPost,
    TResult Function(List<ComicPost?> comicPost)? updateAllComicPost,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchAllPost,
    TResult Function(List<TextPost?> textPost)? updateAllTextPost,
    TResult Function(List<ComicPost?> comicPost)? updateAllComicPost,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchAllPost value) fetchAllPost,
    required TResult Function(_UpdateAllTextPost value) updateAllTextPost,
    required TResult Function(UpdateAllComicPost value) updateAllComicPost,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchAllPost value)? fetchAllPost,
    TResult Function(_UpdateAllTextPost value)? updateAllTextPost,
    TResult Function(UpdateAllComicPost value)? updateAllComicPost,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchAllPost value)? fetchAllPost,
    TResult Function(_UpdateAllTextPost value)? updateAllTextPost,
    TResult Function(UpdateAllComicPost value)? updateAllComicPost,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllFeedEventCopyWith<$Res> {
  factory $AllFeedEventCopyWith(
          AllFeedEvent value, $Res Function(AllFeedEvent) then) =
      _$AllFeedEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AllFeedEventCopyWithImpl<$Res> implements $AllFeedEventCopyWith<$Res> {
  _$AllFeedEventCopyWithImpl(this._value, this._then);

  final AllFeedEvent _value;
  // ignore: unused_field
  final $Res Function(AllFeedEvent) _then;
}

/// @nodoc
abstract class _$$_FetchAllPostCopyWith<$Res> {
  factory _$$_FetchAllPostCopyWith(
          _$_FetchAllPost value, $Res Function(_$_FetchAllPost) then) =
      __$$_FetchAllPostCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchAllPostCopyWithImpl<$Res>
    extends _$AllFeedEventCopyWithImpl<$Res>
    implements _$$_FetchAllPostCopyWith<$Res> {
  __$$_FetchAllPostCopyWithImpl(
      _$_FetchAllPost _value, $Res Function(_$_FetchAllPost) _then)
      : super(_value, (v) => _then(v as _$_FetchAllPost));

  @override
  _$_FetchAllPost get _value => super._value as _$_FetchAllPost;
}

/// @nodoc

class _$_FetchAllPost implements _FetchAllPost {
  const _$_FetchAllPost();

  @override
  String toString() {
    return 'AllFeedEvent.fetchAllPost()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FetchAllPost);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchAllPost,
    required TResult Function(List<TextPost?> textPost) updateAllTextPost,
    required TResult Function(List<ComicPost?> comicPost) updateAllComicPost,
  }) {
    return fetchAllPost();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchAllPost,
    TResult Function(List<TextPost?> textPost)? updateAllTextPost,
    TResult Function(List<ComicPost?> comicPost)? updateAllComicPost,
  }) {
    return fetchAllPost?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchAllPost,
    TResult Function(List<TextPost?> textPost)? updateAllTextPost,
    TResult Function(List<ComicPost?> comicPost)? updateAllComicPost,
    required TResult orElse(),
  }) {
    if (fetchAllPost != null) {
      return fetchAllPost();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchAllPost value) fetchAllPost,
    required TResult Function(_UpdateAllTextPost value) updateAllTextPost,
    required TResult Function(UpdateAllComicPost value) updateAllComicPost,
  }) {
    return fetchAllPost(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchAllPost value)? fetchAllPost,
    TResult Function(_UpdateAllTextPost value)? updateAllTextPost,
    TResult Function(UpdateAllComicPost value)? updateAllComicPost,
  }) {
    return fetchAllPost?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchAllPost value)? fetchAllPost,
    TResult Function(_UpdateAllTextPost value)? updateAllTextPost,
    TResult Function(UpdateAllComicPost value)? updateAllComicPost,
    required TResult orElse(),
  }) {
    if (fetchAllPost != null) {
      return fetchAllPost(this);
    }
    return orElse();
  }
}

abstract class _FetchAllPost implements AllFeedEvent {
  const factory _FetchAllPost() = _$_FetchAllPost;
}

/// @nodoc
abstract class _$$_UpdateAllTextPostCopyWith<$Res> {
  factory _$$_UpdateAllTextPostCopyWith(_$_UpdateAllTextPost value,
          $Res Function(_$_UpdateAllTextPost) then) =
      __$$_UpdateAllTextPostCopyWithImpl<$Res>;
  $Res call({List<TextPost?> textPost});
}

/// @nodoc
class __$$_UpdateAllTextPostCopyWithImpl<$Res>
    extends _$AllFeedEventCopyWithImpl<$Res>
    implements _$$_UpdateAllTextPostCopyWith<$Res> {
  __$$_UpdateAllTextPostCopyWithImpl(
      _$_UpdateAllTextPost _value, $Res Function(_$_UpdateAllTextPost) _then)
      : super(_value, (v) => _then(v as _$_UpdateAllTextPost));

  @override
  _$_UpdateAllTextPost get _value => super._value as _$_UpdateAllTextPost;

  @override
  $Res call({
    Object? textPost = freezed,
  }) {
    return _then(_$_UpdateAllTextPost(
      textPost == freezed
          ? _value._textPost
          : textPost // ignore: cast_nullable_to_non_nullable
              as List<TextPost?>,
    ));
  }
}

/// @nodoc

class _$_UpdateAllTextPost implements _UpdateAllTextPost {
  const _$_UpdateAllTextPost(final List<TextPost?> textPost)
      : _textPost = textPost;

  final List<TextPost?> _textPost;
  @override
  List<TextPost?> get textPost {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_textPost);
  }

  @override
  String toString() {
    return 'AllFeedEvent.updateAllTextPost(textPost: $textPost)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateAllTextPost &&
            const DeepCollectionEquality().equals(other._textPost, _textPost));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_textPost));

  @JsonKey(ignore: true)
  @override
  _$$_UpdateAllTextPostCopyWith<_$_UpdateAllTextPost> get copyWith =>
      __$$_UpdateAllTextPostCopyWithImpl<_$_UpdateAllTextPost>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchAllPost,
    required TResult Function(List<TextPost?> textPost) updateAllTextPost,
    required TResult Function(List<ComicPost?> comicPost) updateAllComicPost,
  }) {
    return updateAllTextPost(textPost);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchAllPost,
    TResult Function(List<TextPost?> textPost)? updateAllTextPost,
    TResult Function(List<ComicPost?> comicPost)? updateAllComicPost,
  }) {
    return updateAllTextPost?.call(textPost);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchAllPost,
    TResult Function(List<TextPost?> textPost)? updateAllTextPost,
    TResult Function(List<ComicPost?> comicPost)? updateAllComicPost,
    required TResult orElse(),
  }) {
    if (updateAllTextPost != null) {
      return updateAllTextPost(textPost);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchAllPost value) fetchAllPost,
    required TResult Function(_UpdateAllTextPost value) updateAllTextPost,
    required TResult Function(UpdateAllComicPost value) updateAllComicPost,
  }) {
    return updateAllTextPost(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchAllPost value)? fetchAllPost,
    TResult Function(_UpdateAllTextPost value)? updateAllTextPost,
    TResult Function(UpdateAllComicPost value)? updateAllComicPost,
  }) {
    return updateAllTextPost?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchAllPost value)? fetchAllPost,
    TResult Function(_UpdateAllTextPost value)? updateAllTextPost,
    TResult Function(UpdateAllComicPost value)? updateAllComicPost,
    required TResult orElse(),
  }) {
    if (updateAllTextPost != null) {
      return updateAllTextPost(this);
    }
    return orElse();
  }
}

abstract class _UpdateAllTextPost implements AllFeedEvent {
  const factory _UpdateAllTextPost(final List<TextPost?> textPost) =
      _$_UpdateAllTextPost;

  List<TextPost?> get textPost;
  @JsonKey(ignore: true)
  _$$_UpdateAllTextPostCopyWith<_$_UpdateAllTextPost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateAllComicPostCopyWith<$Res> {
  factory _$$UpdateAllComicPostCopyWith(_$UpdateAllComicPost value,
          $Res Function(_$UpdateAllComicPost) then) =
      __$$UpdateAllComicPostCopyWithImpl<$Res>;
  $Res call({List<ComicPost?> comicPost});
}

/// @nodoc
class __$$UpdateAllComicPostCopyWithImpl<$Res>
    extends _$AllFeedEventCopyWithImpl<$Res>
    implements _$$UpdateAllComicPostCopyWith<$Res> {
  __$$UpdateAllComicPostCopyWithImpl(
      _$UpdateAllComicPost _value, $Res Function(_$UpdateAllComicPost) _then)
      : super(_value, (v) => _then(v as _$UpdateAllComicPost));

  @override
  _$UpdateAllComicPost get _value => super._value as _$UpdateAllComicPost;

  @override
  $Res call({
    Object? comicPost = freezed,
  }) {
    return _then(_$UpdateAllComicPost(
      comicPost == freezed
          ? _value._comicPost
          : comicPost // ignore: cast_nullable_to_non_nullable
              as List<ComicPost?>,
    ));
  }
}

/// @nodoc

class _$UpdateAllComicPost implements UpdateAllComicPost {
  const _$UpdateAllComicPost(final List<ComicPost?> comicPost)
      : _comicPost = comicPost;

  final List<ComicPost?> _comicPost;
  @override
  List<ComicPost?> get comicPost {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comicPost);
  }

  @override
  String toString() {
    return 'AllFeedEvent.updateAllComicPost(comicPost: $comicPost)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateAllComicPost &&
            const DeepCollectionEquality()
                .equals(other._comicPost, _comicPost));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_comicPost));

  @JsonKey(ignore: true)
  @override
  _$$UpdateAllComicPostCopyWith<_$UpdateAllComicPost> get copyWith =>
      __$$UpdateAllComicPostCopyWithImpl<_$UpdateAllComicPost>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchAllPost,
    required TResult Function(List<TextPost?> textPost) updateAllTextPost,
    required TResult Function(List<ComicPost?> comicPost) updateAllComicPost,
  }) {
    return updateAllComicPost(comicPost);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchAllPost,
    TResult Function(List<TextPost?> textPost)? updateAllTextPost,
    TResult Function(List<ComicPost?> comicPost)? updateAllComicPost,
  }) {
    return updateAllComicPost?.call(comicPost);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchAllPost,
    TResult Function(List<TextPost?> textPost)? updateAllTextPost,
    TResult Function(List<ComicPost?> comicPost)? updateAllComicPost,
    required TResult orElse(),
  }) {
    if (updateAllComicPost != null) {
      return updateAllComicPost(comicPost);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchAllPost value) fetchAllPost,
    required TResult Function(_UpdateAllTextPost value) updateAllTextPost,
    required TResult Function(UpdateAllComicPost value) updateAllComicPost,
  }) {
    return updateAllComicPost(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchAllPost value)? fetchAllPost,
    TResult Function(_UpdateAllTextPost value)? updateAllTextPost,
    TResult Function(UpdateAllComicPost value)? updateAllComicPost,
  }) {
    return updateAllComicPost?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchAllPost value)? fetchAllPost,
    TResult Function(_UpdateAllTextPost value)? updateAllTextPost,
    TResult Function(UpdateAllComicPost value)? updateAllComicPost,
    required TResult orElse(),
  }) {
    if (updateAllComicPost != null) {
      return updateAllComicPost(this);
    }
    return orElse();
  }
}

abstract class UpdateAllComicPost implements AllFeedEvent {
  const factory UpdateAllComicPost(final List<ComicPost?> comicPost) =
      _$UpdateAllComicPost;

  List<ComicPost?> get comicPost;
  @JsonKey(ignore: true)
  _$$UpdateAllComicPostCopyWith<_$UpdateAllComicPost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AllFeedState {
  List<TextPost?> get textPost => throw _privateConstructorUsedError;
  List<ComicPost?> get picturePost => throw _privateConstructorUsedError;
  AllFeedStatus get status => throw _privateConstructorUsedError;
  Exception? get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AllFeedStateCopyWith<AllFeedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllFeedStateCopyWith<$Res> {
  factory $AllFeedStateCopyWith(
          AllFeedState value, $Res Function(AllFeedState) then) =
      _$AllFeedStateCopyWithImpl<$Res>;
  $Res call(
      {List<TextPost?> textPost,
      List<ComicPost?> picturePost,
      AllFeedStatus status,
      Exception? failure});
}

/// @nodoc
class _$AllFeedStateCopyWithImpl<$Res> implements $AllFeedStateCopyWith<$Res> {
  _$AllFeedStateCopyWithImpl(this._value, this._then);

  final AllFeedState _value;
  // ignore: unused_field
  final $Res Function(AllFeedState) _then;

  @override
  $Res call({
    Object? textPost = freezed,
    Object? picturePost = freezed,
    Object? status = freezed,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      textPost: textPost == freezed
          ? _value.textPost
          : textPost // ignore: cast_nullable_to_non_nullable
              as List<TextPost?>,
      picturePost: picturePost == freezed
          ? _value.picturePost
          : picturePost // ignore: cast_nullable_to_non_nullable
              as List<ComicPost?>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AllFeedStatus,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ));
  }
}

/// @nodoc
abstract class _$$_AllFeedStateCopyWith<$Res>
    implements $AllFeedStateCopyWith<$Res> {
  factory _$$_AllFeedStateCopyWith(
          _$_AllFeedState value, $Res Function(_$_AllFeedState) then) =
      __$$_AllFeedStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<TextPost?> textPost,
      List<ComicPost?> picturePost,
      AllFeedStatus status,
      Exception? failure});
}

/// @nodoc
class __$$_AllFeedStateCopyWithImpl<$Res>
    extends _$AllFeedStateCopyWithImpl<$Res>
    implements _$$_AllFeedStateCopyWith<$Res> {
  __$$_AllFeedStateCopyWithImpl(
      _$_AllFeedState _value, $Res Function(_$_AllFeedState) _then)
      : super(_value, (v) => _then(v as _$_AllFeedState));

  @override
  _$_AllFeedState get _value => super._value as _$_AllFeedState;

  @override
  $Res call({
    Object? textPost = freezed,
    Object? picturePost = freezed,
    Object? status = freezed,
    Object? failure = freezed,
  }) {
    return _then(_$_AllFeedState(
      textPost: textPost == freezed
          ? _value._textPost
          : textPost // ignore: cast_nullable_to_non_nullable
              as List<TextPost?>,
      picturePost: picturePost == freezed
          ? _value._picturePost
          : picturePost // ignore: cast_nullable_to_non_nullable
              as List<ComicPost?>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AllFeedStatus,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ));
  }
}

/// @nodoc

class _$_AllFeedState implements _AllFeedState {
  const _$_AllFeedState(
      {required final List<TextPost?> textPost,
      required final List<ComicPost?> picturePost,
      required this.status,
      required this.failure})
      : _textPost = textPost,
        _picturePost = picturePost;

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

  @override
  final AllFeedStatus status;
  @override
  final Exception? failure;

  @override
  String toString() {
    return 'AllFeedState(textPost: $textPost, picturePost: $picturePost, status: $status, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AllFeedState &&
            const DeepCollectionEquality().equals(other._textPost, _textPost) &&
            const DeepCollectionEquality()
                .equals(other._picturePost, _picturePost) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_textPost),
      const DeepCollectionEquality().hash(_picturePost),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$$_AllFeedStateCopyWith<_$_AllFeedState> get copyWith =>
      __$$_AllFeedStateCopyWithImpl<_$_AllFeedState>(this, _$identity);
}

abstract class _AllFeedState implements AllFeedState {
  const factory _AllFeedState(
      {required final List<TextPost?> textPost,
      required final List<ComicPost?> picturePost,
      required final AllFeedStatus status,
      required final Exception? failure}) = _$_AllFeedState;

  @override
  List<TextPost?> get textPost;
  @override
  List<ComicPost?> get picturePost;
  @override
  AllFeedStatus get status;
  @override
  Exception? get failure;
  @override
  @JsonKey(ignore: true)
  _$$_AllFeedStateCopyWith<_$_AllFeedState> get copyWith =>
      throw _privateConstructorUsedError;
}
