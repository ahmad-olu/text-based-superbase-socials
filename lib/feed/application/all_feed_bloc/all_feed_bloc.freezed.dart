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
    required TResult Function(List<Post?> post) updateAllPost,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchAllPost,
    TResult Function(List<Post?> post)? updateAllPost,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchAllPost,
    TResult Function(List<Post?> post)? updateAllPost,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchAllPost value) fetchAllPost,
    required TResult Function(_UpdateAllPost value) updateAllPost,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchAllPost value)? fetchAllPost,
    TResult Function(_UpdateAllPost value)? updateAllPost,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchAllPost value)? fetchAllPost,
    TResult Function(_UpdateAllPost value)? updateAllPost,
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
    required TResult Function(List<Post?> post) updateAllPost,
  }) {
    return fetchAllPost();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchAllPost,
    TResult Function(List<Post?> post)? updateAllPost,
  }) {
    return fetchAllPost?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchAllPost,
    TResult Function(List<Post?> post)? updateAllPost,
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
    required TResult Function(_UpdateAllPost value) updateAllPost,
  }) {
    return fetchAllPost(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchAllPost value)? fetchAllPost,
    TResult Function(_UpdateAllPost value)? updateAllPost,
  }) {
    return fetchAllPost?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchAllPost value)? fetchAllPost,
    TResult Function(_UpdateAllPost value)? updateAllPost,
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
abstract class _$$_UpdateAllPostCopyWith<$Res> {
  factory _$$_UpdateAllPostCopyWith(
          _$_UpdateAllPost value, $Res Function(_$_UpdateAllPost) then) =
      __$$_UpdateAllPostCopyWithImpl<$Res>;
  $Res call({List<Post?> post});
}

/// @nodoc
class __$$_UpdateAllPostCopyWithImpl<$Res>
    extends _$AllFeedEventCopyWithImpl<$Res>
    implements _$$_UpdateAllPostCopyWith<$Res> {
  __$$_UpdateAllPostCopyWithImpl(
      _$_UpdateAllPost _value, $Res Function(_$_UpdateAllPost) _then)
      : super(_value, (v) => _then(v as _$_UpdateAllPost));

  @override
  _$_UpdateAllPost get _value => super._value as _$_UpdateAllPost;

  @override
  $Res call({
    Object? post = freezed,
  }) {
    return _then(_$_UpdateAllPost(
      post == freezed
          ? _value._post
          : post // ignore: cast_nullable_to_non_nullable
              as List<Post?>,
    ));
  }
}

/// @nodoc

class _$_UpdateAllPost implements _UpdateAllPost {
  const _$_UpdateAllPost(final List<Post?> post) : _post = post;

  final List<Post?> _post;
  @override
  List<Post?> get post {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_post);
  }

  @override
  String toString() {
    return 'AllFeedEvent.updateAllPost(post: $post)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateAllPost &&
            const DeepCollectionEquality().equals(other._post, _post));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_post));

  @JsonKey(ignore: true)
  @override
  _$$_UpdateAllPostCopyWith<_$_UpdateAllPost> get copyWith =>
      __$$_UpdateAllPostCopyWithImpl<_$_UpdateAllPost>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchAllPost,
    required TResult Function(List<Post?> post) updateAllPost,
  }) {
    return updateAllPost(post);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchAllPost,
    TResult Function(List<Post?> post)? updateAllPost,
  }) {
    return updateAllPost?.call(post);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchAllPost,
    TResult Function(List<Post?> post)? updateAllPost,
    required TResult orElse(),
  }) {
    if (updateAllPost != null) {
      return updateAllPost(post);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchAllPost value) fetchAllPost,
    required TResult Function(_UpdateAllPost value) updateAllPost,
  }) {
    return updateAllPost(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchAllPost value)? fetchAllPost,
    TResult Function(_UpdateAllPost value)? updateAllPost,
  }) {
    return updateAllPost?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchAllPost value)? fetchAllPost,
    TResult Function(_UpdateAllPost value)? updateAllPost,
    required TResult orElse(),
  }) {
    if (updateAllPost != null) {
      return updateAllPost(this);
    }
    return orElse();
  }
}

abstract class _UpdateAllPost implements AllFeedEvent {
  const factory _UpdateAllPost(final List<Post?> post) = _$_UpdateAllPost;

  List<Post?> get post;
  @JsonKey(ignore: true)
  _$$_UpdateAllPostCopyWith<_$_UpdateAllPost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AllFeedState {
  List<Post?> get post => throw _privateConstructorUsedError;
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
  $Res call({List<Post?> post, AllFeedStatus status, Exception? failure});
}

/// @nodoc
class _$AllFeedStateCopyWithImpl<$Res> implements $AllFeedStateCopyWith<$Res> {
  _$AllFeedStateCopyWithImpl(this._value, this._then);

  final AllFeedState _value;
  // ignore: unused_field
  final $Res Function(AllFeedState) _then;

  @override
  $Res call({
    Object? post = freezed,
    Object? status = freezed,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      post: post == freezed
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as List<Post?>,
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
  $Res call({List<Post?> post, AllFeedStatus status, Exception? failure});
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
    Object? post = freezed,
    Object? status = freezed,
    Object? failure = freezed,
  }) {
    return _then(_$_AllFeedState(
      post: post == freezed
          ? _value._post
          : post // ignore: cast_nullable_to_non_nullable
              as List<Post?>,
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
      {required final List<Post?> post,
      required this.status,
      required this.failure})
      : _post = post;

  final List<Post?> _post;
  @override
  List<Post?> get post {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_post);
  }

  @override
  final AllFeedStatus status;
  @override
  final Exception? failure;

  @override
  String toString() {
    return 'AllFeedState(post: $post, status: $status, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AllFeedState &&
            const DeepCollectionEquality().equals(other._post, _post) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_post),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$$_AllFeedStateCopyWith<_$_AllFeedState> get copyWith =>
      __$$_AllFeedStateCopyWithImpl<_$_AllFeedState>(this, _$identity);
}

abstract class _AllFeedState implements AllFeedState {
  const factory _AllFeedState(
      {required final List<Post?> post,
      required final AllFeedStatus status,
      required final Exception? failure}) = _$_AllFeedState;

  @override
  List<Post?> get post;
  @override
  AllFeedStatus get status;
  @override
  Exception? get failure;
  @override
  @JsonKey(ignore: true)
  _$$_AllFeedStateCopyWith<_$_AllFeedState> get copyWith =>
      throw _privateConstructorUsedError;
}
