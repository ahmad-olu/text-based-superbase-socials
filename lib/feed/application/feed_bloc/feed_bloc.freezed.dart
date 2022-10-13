// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'feed_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FeedEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchPosts,
    required TResult Function() paginatePosts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchPosts,
    TResult Function()? paginatePosts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchPosts,
    TResult Function()? paginatePosts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchPosts value) fetchPosts,
    required TResult Function(_PaginatePosts value) paginatePosts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchPosts value)? fetchPosts,
    TResult Function(_PaginatePosts value)? paginatePosts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchPosts value)? fetchPosts,
    TResult Function(_PaginatePosts value)? paginatePosts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedEventCopyWith<$Res> {
  factory $FeedEventCopyWith(FeedEvent value, $Res Function(FeedEvent) then) =
      _$FeedEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FeedEventCopyWithImpl<$Res> implements $FeedEventCopyWith<$Res> {
  _$FeedEventCopyWithImpl(this._value, this._then);

  final FeedEvent _value;
  // ignore: unused_field
  final $Res Function(FeedEvent) _then;
}

/// @nodoc
abstract class _$$_FetchPostsCopyWith<$Res> {
  factory _$$_FetchPostsCopyWith(
          _$_FetchPosts value, $Res Function(_$_FetchPosts) then) =
      __$$_FetchPostsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FetchPostsCopyWithImpl<$Res> extends _$FeedEventCopyWithImpl<$Res>
    implements _$$_FetchPostsCopyWith<$Res> {
  __$$_FetchPostsCopyWithImpl(
      _$_FetchPosts _value, $Res Function(_$_FetchPosts) _then)
      : super(_value, (v) => _then(v as _$_FetchPosts));

  @override
  _$_FetchPosts get _value => super._value as _$_FetchPosts;
}

/// @nodoc

class _$_FetchPosts implements _FetchPosts {
  const _$_FetchPosts();

  @override
  String toString() {
    return 'FeedEvent.fetchPosts()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FetchPosts);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchPosts,
    required TResult Function() paginatePosts,
  }) {
    return fetchPosts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchPosts,
    TResult Function()? paginatePosts,
  }) {
    return fetchPosts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchPosts,
    TResult Function()? paginatePosts,
    required TResult orElse(),
  }) {
    if (fetchPosts != null) {
      return fetchPosts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchPosts value) fetchPosts,
    required TResult Function(_PaginatePosts value) paginatePosts,
  }) {
    return fetchPosts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchPosts value)? fetchPosts,
    TResult Function(_PaginatePosts value)? paginatePosts,
  }) {
    return fetchPosts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchPosts value)? fetchPosts,
    TResult Function(_PaginatePosts value)? paginatePosts,
    required TResult orElse(),
  }) {
    if (fetchPosts != null) {
      return fetchPosts(this);
    }
    return orElse();
  }
}

abstract class _FetchPosts implements FeedEvent {
  const factory _FetchPosts() = _$_FetchPosts;
}

/// @nodoc
abstract class _$$_PaginatePostsCopyWith<$Res> {
  factory _$$_PaginatePostsCopyWith(
          _$_PaginatePosts value, $Res Function(_$_PaginatePosts) then) =
      __$$_PaginatePostsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PaginatePostsCopyWithImpl<$Res> extends _$FeedEventCopyWithImpl<$Res>
    implements _$$_PaginatePostsCopyWith<$Res> {
  __$$_PaginatePostsCopyWithImpl(
      _$_PaginatePosts _value, $Res Function(_$_PaginatePosts) _then)
      : super(_value, (v) => _then(v as _$_PaginatePosts));

  @override
  _$_PaginatePosts get _value => super._value as _$_PaginatePosts;
}

/// @nodoc

class _$_PaginatePosts implements _PaginatePosts {
  const _$_PaginatePosts();

  @override
  String toString() {
    return 'FeedEvent.paginatePosts()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PaginatePosts);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchPosts,
    required TResult Function() paginatePosts,
  }) {
    return paginatePosts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchPosts,
    TResult Function()? paginatePosts,
  }) {
    return paginatePosts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchPosts,
    TResult Function()? paginatePosts,
    required TResult orElse(),
  }) {
    if (paginatePosts != null) {
      return paginatePosts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchPosts value) fetchPosts,
    required TResult Function(_PaginatePosts value) paginatePosts,
  }) {
    return paginatePosts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchPosts value)? fetchPosts,
    TResult Function(_PaginatePosts value)? paginatePosts,
  }) {
    return paginatePosts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchPosts value)? fetchPosts,
    TResult Function(_PaginatePosts value)? paginatePosts,
    required TResult orElse(),
  }) {
    if (paginatePosts != null) {
      return paginatePosts(this);
    }
    return orElse();
  }
}

abstract class _PaginatePosts implements FeedEvent {
  const factory _PaginatePosts() = _$_PaginatePosts;
}

/// @nodoc
mixin _$FeedState {
  List<Post?> get post => throw _privateConstructorUsedError;
  FeedStatus get status => throw _privateConstructorUsedError;
  Exception? get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FeedStateCopyWith<FeedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedStateCopyWith<$Res> {
  factory $FeedStateCopyWith(FeedState value, $Res Function(FeedState) then) =
      _$FeedStateCopyWithImpl<$Res>;
  $Res call({List<Post?> post, FeedStatus status, Exception? failure});
}

/// @nodoc
class _$FeedStateCopyWithImpl<$Res> implements $FeedStateCopyWith<$Res> {
  _$FeedStateCopyWithImpl(this._value, this._then);

  final FeedState _value;
  // ignore: unused_field
  final $Res Function(FeedState) _then;

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
              as FeedStatus,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ));
  }
}

/// @nodoc
abstract class _$$_FeedStateCopyWith<$Res> implements $FeedStateCopyWith<$Res> {
  factory _$$_FeedStateCopyWith(
          _$_FeedState value, $Res Function(_$_FeedState) then) =
      __$$_FeedStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Post?> post, FeedStatus status, Exception? failure});
}

/// @nodoc
class __$$_FeedStateCopyWithImpl<$Res> extends _$FeedStateCopyWithImpl<$Res>
    implements _$$_FeedStateCopyWith<$Res> {
  __$$_FeedStateCopyWithImpl(
      _$_FeedState _value, $Res Function(_$_FeedState) _then)
      : super(_value, (v) => _then(v as _$_FeedState));

  @override
  _$_FeedState get _value => super._value as _$_FeedState;

  @override
  $Res call({
    Object? post = freezed,
    Object? status = freezed,
    Object? failure = freezed,
  }) {
    return _then(_$_FeedState(
      post: post == freezed
          ? _value._post
          : post // ignore: cast_nullable_to_non_nullable
              as List<Post?>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FeedStatus,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ));
  }
}

/// @nodoc

class _$_FeedState implements _FeedState {
  const _$_FeedState(
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
  final FeedStatus status;
  @override
  final Exception? failure;

  @override
  String toString() {
    return 'FeedState(post: $post, status: $status, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FeedState &&
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
  _$$_FeedStateCopyWith<_$_FeedState> get copyWith =>
      __$$_FeedStateCopyWithImpl<_$_FeedState>(this, _$identity);
}

abstract class _FeedState implements FeedState {
  const factory _FeedState(
      {required final List<Post?> post,
      required final FeedStatus status,
      required final Exception? failure}) = _$_FeedState;

  @override
  List<Post?> get post;
  @override
  FeedStatus get status;
  @override
  Exception? get failure;
  @override
  @JsonKey(ignore: true)
  _$$_FeedStateCopyWith<_$_FeedState> get copyWith =>
      throw _privateConstructorUsedError;
}
