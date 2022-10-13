// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 're_imagined_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ReImaginedEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Post post) fetchReImagined,
    required TResult Function(List<ReImagined?> reImagined) updateReImagined,
    required TResult Function(String content) postReImagined,
    required TResult Function() postReset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Post post)? fetchReImagined,
    TResult Function(List<ReImagined?> reImagined)? updateReImagined,
    TResult Function(String content)? postReImagined,
    TResult Function()? postReset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Post post)? fetchReImagined,
    TResult Function(List<ReImagined?> reImagined)? updateReImagined,
    TResult Function(String content)? postReImagined,
    TResult Function()? postReset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchReImagined value) fetchReImagined,
    required TResult Function(_UpdateReImagined value) updateReImagined,
    required TResult Function(_PostReImagined value) postReImagined,
    required TResult Function(_PostReset value) postReset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchReImagined value)? fetchReImagined,
    TResult Function(_UpdateReImagined value)? updateReImagined,
    TResult Function(_PostReImagined value)? postReImagined,
    TResult Function(_PostReset value)? postReset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchReImagined value)? fetchReImagined,
    TResult Function(_UpdateReImagined value)? updateReImagined,
    TResult Function(_PostReImagined value)? postReImagined,
    TResult Function(_PostReset value)? postReset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReImaginedEventCopyWith<$Res> {
  factory $ReImaginedEventCopyWith(
          ReImaginedEvent value, $Res Function(ReImaginedEvent) then) =
      _$ReImaginedEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ReImaginedEventCopyWithImpl<$Res>
    implements $ReImaginedEventCopyWith<$Res> {
  _$ReImaginedEventCopyWithImpl(this._value, this._then);

  final ReImaginedEvent _value;
  // ignore: unused_field
  final $Res Function(ReImaginedEvent) _then;
}

/// @nodoc
abstract class _$$_FetchReImaginedCopyWith<$Res> {
  factory _$$_FetchReImaginedCopyWith(
          _$_FetchReImagined value, $Res Function(_$_FetchReImagined) then) =
      __$$_FetchReImaginedCopyWithImpl<$Res>;
  $Res call({Post post});

  $PostCopyWith<$Res> get post;
}

/// @nodoc
class __$$_FetchReImaginedCopyWithImpl<$Res>
    extends _$ReImaginedEventCopyWithImpl<$Res>
    implements _$$_FetchReImaginedCopyWith<$Res> {
  __$$_FetchReImaginedCopyWithImpl(
      _$_FetchReImagined _value, $Res Function(_$_FetchReImagined) _then)
      : super(_value, (v) => _then(v as _$_FetchReImagined));

  @override
  _$_FetchReImagined get _value => super._value as _$_FetchReImagined;

  @override
  $Res call({
    Object? post = freezed,
  }) {
    return _then(_$_FetchReImagined(
      post: post == freezed
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as Post,
    ));
  }

  @override
  $PostCopyWith<$Res> get post {
    return $PostCopyWith<$Res>(_value.post, (value) {
      return _then(_value.copyWith(post: value));
    });
  }
}

/// @nodoc

class _$_FetchReImagined implements _FetchReImagined {
  const _$_FetchReImagined({required this.post});

  @override
  final Post post;

  @override
  String toString() {
    return 'ReImaginedEvent.fetchReImagined(post: $post)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchReImagined &&
            const DeepCollectionEquality().equals(other.post, post));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(post));

  @JsonKey(ignore: true)
  @override
  _$$_FetchReImaginedCopyWith<_$_FetchReImagined> get copyWith =>
      __$$_FetchReImaginedCopyWithImpl<_$_FetchReImagined>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Post post) fetchReImagined,
    required TResult Function(List<ReImagined?> reImagined) updateReImagined,
    required TResult Function(String content) postReImagined,
    required TResult Function() postReset,
  }) {
    return fetchReImagined(post);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Post post)? fetchReImagined,
    TResult Function(List<ReImagined?> reImagined)? updateReImagined,
    TResult Function(String content)? postReImagined,
    TResult Function()? postReset,
  }) {
    return fetchReImagined?.call(post);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Post post)? fetchReImagined,
    TResult Function(List<ReImagined?> reImagined)? updateReImagined,
    TResult Function(String content)? postReImagined,
    TResult Function()? postReset,
    required TResult orElse(),
  }) {
    if (fetchReImagined != null) {
      return fetchReImagined(post);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchReImagined value) fetchReImagined,
    required TResult Function(_UpdateReImagined value) updateReImagined,
    required TResult Function(_PostReImagined value) postReImagined,
    required TResult Function(_PostReset value) postReset,
  }) {
    return fetchReImagined(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchReImagined value)? fetchReImagined,
    TResult Function(_UpdateReImagined value)? updateReImagined,
    TResult Function(_PostReImagined value)? postReImagined,
    TResult Function(_PostReset value)? postReset,
  }) {
    return fetchReImagined?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchReImagined value)? fetchReImagined,
    TResult Function(_UpdateReImagined value)? updateReImagined,
    TResult Function(_PostReImagined value)? postReImagined,
    TResult Function(_PostReset value)? postReset,
    required TResult orElse(),
  }) {
    if (fetchReImagined != null) {
      return fetchReImagined(this);
    }
    return orElse();
  }
}

abstract class _FetchReImagined implements ReImaginedEvent {
  const factory _FetchReImagined({required final Post post}) =
      _$_FetchReImagined;

  Post get post;
  @JsonKey(ignore: true)
  _$$_FetchReImaginedCopyWith<_$_FetchReImagined> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateReImaginedCopyWith<$Res> {
  factory _$$_UpdateReImaginedCopyWith(
          _$_UpdateReImagined value, $Res Function(_$_UpdateReImagined) then) =
      __$$_UpdateReImaginedCopyWithImpl<$Res>;
  $Res call({List<ReImagined?> reImagined});
}

/// @nodoc
class __$$_UpdateReImaginedCopyWithImpl<$Res>
    extends _$ReImaginedEventCopyWithImpl<$Res>
    implements _$$_UpdateReImaginedCopyWith<$Res> {
  __$$_UpdateReImaginedCopyWithImpl(
      _$_UpdateReImagined _value, $Res Function(_$_UpdateReImagined) _then)
      : super(_value, (v) => _then(v as _$_UpdateReImagined));

  @override
  _$_UpdateReImagined get _value => super._value as _$_UpdateReImagined;

  @override
  $Res call({
    Object? reImagined = freezed,
  }) {
    return _then(_$_UpdateReImagined(
      reImagined: reImagined == freezed
          ? _value._reImagined
          : reImagined // ignore: cast_nullable_to_non_nullable
              as List<ReImagined?>,
    ));
  }
}

/// @nodoc

class _$_UpdateReImagined implements _UpdateReImagined {
  const _$_UpdateReImagined({required final List<ReImagined?> reImagined})
      : _reImagined = reImagined;

  final List<ReImagined?> _reImagined;
  @override
  List<ReImagined?> get reImagined {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reImagined);
  }

  @override
  String toString() {
    return 'ReImaginedEvent.updateReImagined(reImagined: $reImagined)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateReImagined &&
            const DeepCollectionEquality()
                .equals(other._reImagined, _reImagined));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_reImagined));

  @JsonKey(ignore: true)
  @override
  _$$_UpdateReImaginedCopyWith<_$_UpdateReImagined> get copyWith =>
      __$$_UpdateReImaginedCopyWithImpl<_$_UpdateReImagined>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Post post) fetchReImagined,
    required TResult Function(List<ReImagined?> reImagined) updateReImagined,
    required TResult Function(String content) postReImagined,
    required TResult Function() postReset,
  }) {
    return updateReImagined(reImagined);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Post post)? fetchReImagined,
    TResult Function(List<ReImagined?> reImagined)? updateReImagined,
    TResult Function(String content)? postReImagined,
    TResult Function()? postReset,
  }) {
    return updateReImagined?.call(reImagined);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Post post)? fetchReImagined,
    TResult Function(List<ReImagined?> reImagined)? updateReImagined,
    TResult Function(String content)? postReImagined,
    TResult Function()? postReset,
    required TResult orElse(),
  }) {
    if (updateReImagined != null) {
      return updateReImagined(reImagined);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchReImagined value) fetchReImagined,
    required TResult Function(_UpdateReImagined value) updateReImagined,
    required TResult Function(_PostReImagined value) postReImagined,
    required TResult Function(_PostReset value) postReset,
  }) {
    return updateReImagined(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchReImagined value)? fetchReImagined,
    TResult Function(_UpdateReImagined value)? updateReImagined,
    TResult Function(_PostReImagined value)? postReImagined,
    TResult Function(_PostReset value)? postReset,
  }) {
    return updateReImagined?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchReImagined value)? fetchReImagined,
    TResult Function(_UpdateReImagined value)? updateReImagined,
    TResult Function(_PostReImagined value)? postReImagined,
    TResult Function(_PostReset value)? postReset,
    required TResult orElse(),
  }) {
    if (updateReImagined != null) {
      return updateReImagined(this);
    }
    return orElse();
  }
}

abstract class _UpdateReImagined implements ReImaginedEvent {
  const factory _UpdateReImagined(
      {required final List<ReImagined?> reImagined}) = _$_UpdateReImagined;

  List<ReImagined?> get reImagined;
  @JsonKey(ignore: true)
  _$$_UpdateReImaginedCopyWith<_$_UpdateReImagined> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PostReImaginedCopyWith<$Res> {
  factory _$$_PostReImaginedCopyWith(
          _$_PostReImagined value, $Res Function(_$_PostReImagined) then) =
      __$$_PostReImaginedCopyWithImpl<$Res>;
  $Res call({String content});
}

/// @nodoc
class __$$_PostReImaginedCopyWithImpl<$Res>
    extends _$ReImaginedEventCopyWithImpl<$Res>
    implements _$$_PostReImaginedCopyWith<$Res> {
  __$$_PostReImaginedCopyWithImpl(
      _$_PostReImagined _value, $Res Function(_$_PostReImagined) _then)
      : super(_value, (v) => _then(v as _$_PostReImagined));

  @override
  _$_PostReImagined get _value => super._value as _$_PostReImagined;

  @override
  $Res call({
    Object? content = freezed,
  }) {
    return _then(_$_PostReImagined(
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PostReImagined implements _PostReImagined {
  const _$_PostReImagined({required this.content});

  @override
  final String content;

  @override
  String toString() {
    return 'ReImaginedEvent.postReImagined(content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostReImagined &&
            const DeepCollectionEquality().equals(other.content, content));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(content));

  @JsonKey(ignore: true)
  @override
  _$$_PostReImaginedCopyWith<_$_PostReImagined> get copyWith =>
      __$$_PostReImaginedCopyWithImpl<_$_PostReImagined>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Post post) fetchReImagined,
    required TResult Function(List<ReImagined?> reImagined) updateReImagined,
    required TResult Function(String content) postReImagined,
    required TResult Function() postReset,
  }) {
    return postReImagined(content);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Post post)? fetchReImagined,
    TResult Function(List<ReImagined?> reImagined)? updateReImagined,
    TResult Function(String content)? postReImagined,
    TResult Function()? postReset,
  }) {
    return postReImagined?.call(content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Post post)? fetchReImagined,
    TResult Function(List<ReImagined?> reImagined)? updateReImagined,
    TResult Function(String content)? postReImagined,
    TResult Function()? postReset,
    required TResult orElse(),
  }) {
    if (postReImagined != null) {
      return postReImagined(content);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchReImagined value) fetchReImagined,
    required TResult Function(_UpdateReImagined value) updateReImagined,
    required TResult Function(_PostReImagined value) postReImagined,
    required TResult Function(_PostReset value) postReset,
  }) {
    return postReImagined(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchReImagined value)? fetchReImagined,
    TResult Function(_UpdateReImagined value)? updateReImagined,
    TResult Function(_PostReImagined value)? postReImagined,
    TResult Function(_PostReset value)? postReset,
  }) {
    return postReImagined?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchReImagined value)? fetchReImagined,
    TResult Function(_UpdateReImagined value)? updateReImagined,
    TResult Function(_PostReImagined value)? postReImagined,
    TResult Function(_PostReset value)? postReset,
    required TResult orElse(),
  }) {
    if (postReImagined != null) {
      return postReImagined(this);
    }
    return orElse();
  }
}

abstract class _PostReImagined implements ReImaginedEvent {
  const factory _PostReImagined({required final String content}) =
      _$_PostReImagined;

  String get content;
  @JsonKey(ignore: true)
  _$$_PostReImaginedCopyWith<_$_PostReImagined> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PostResetCopyWith<$Res> {
  factory _$$_PostResetCopyWith(
          _$_PostReset value, $Res Function(_$_PostReset) then) =
      __$$_PostResetCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PostResetCopyWithImpl<$Res>
    extends _$ReImaginedEventCopyWithImpl<$Res>
    implements _$$_PostResetCopyWith<$Res> {
  __$$_PostResetCopyWithImpl(
      _$_PostReset _value, $Res Function(_$_PostReset) _then)
      : super(_value, (v) => _then(v as _$_PostReset));

  @override
  _$_PostReset get _value => super._value as _$_PostReset;
}

/// @nodoc

class _$_PostReset implements _PostReset {
  const _$_PostReset();

  @override
  String toString() {
    return 'ReImaginedEvent.postReset()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PostReset);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Post post) fetchReImagined,
    required TResult Function(List<ReImagined?> reImagined) updateReImagined,
    required TResult Function(String content) postReImagined,
    required TResult Function() postReset,
  }) {
    return postReset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Post post)? fetchReImagined,
    TResult Function(List<ReImagined?> reImagined)? updateReImagined,
    TResult Function(String content)? postReImagined,
    TResult Function()? postReset,
  }) {
    return postReset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Post post)? fetchReImagined,
    TResult Function(List<ReImagined?> reImagined)? updateReImagined,
    TResult Function(String content)? postReImagined,
    TResult Function()? postReset,
    required TResult orElse(),
  }) {
    if (postReset != null) {
      return postReset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchReImagined value) fetchReImagined,
    required TResult Function(_UpdateReImagined value) updateReImagined,
    required TResult Function(_PostReImagined value) postReImagined,
    required TResult Function(_PostReset value) postReset,
  }) {
    return postReset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchReImagined value)? fetchReImagined,
    TResult Function(_UpdateReImagined value)? updateReImagined,
    TResult Function(_PostReImagined value)? postReImagined,
    TResult Function(_PostReset value)? postReset,
  }) {
    return postReset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchReImagined value)? fetchReImagined,
    TResult Function(_UpdateReImagined value)? updateReImagined,
    TResult Function(_PostReImagined value)? postReImagined,
    TResult Function(_PostReset value)? postReset,
    required TResult orElse(),
  }) {
    if (postReset != null) {
      return postReset(this);
    }
    return orElse();
  }
}

abstract class _PostReset implements ReImaginedEvent {
  const factory _PostReset() = _$_PostReset;
}

/// @nodoc
mixin _$ReImaginedState {
  Post? get post => throw _privateConstructorUsedError;
  List<ReImagined?> get reImagined => throw _privateConstructorUsedError;
  ReImaginedStatus get status => throw _privateConstructorUsedError;
  Exception? get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReImaginedStateCopyWith<ReImaginedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReImaginedStateCopyWith<$Res> {
  factory $ReImaginedStateCopyWith(
          ReImaginedState value, $Res Function(ReImaginedState) then) =
      _$ReImaginedStateCopyWithImpl<$Res>;
  $Res call(
      {Post? post,
      List<ReImagined?> reImagined,
      ReImaginedStatus status,
      Exception? failure});

  $PostCopyWith<$Res>? get post;
}

/// @nodoc
class _$ReImaginedStateCopyWithImpl<$Res>
    implements $ReImaginedStateCopyWith<$Res> {
  _$ReImaginedStateCopyWithImpl(this._value, this._then);

  final ReImaginedState _value;
  // ignore: unused_field
  final $Res Function(ReImaginedState) _then;

  @override
  $Res call({
    Object? post = freezed,
    Object? reImagined = freezed,
    Object? status = freezed,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      post: post == freezed
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as Post?,
      reImagined: reImagined == freezed
          ? _value.reImagined
          : reImagined // ignore: cast_nullable_to_non_nullable
              as List<ReImagined?>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ReImaginedStatus,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ));
  }

  @override
  $PostCopyWith<$Res>? get post {
    if (_value.post == null) {
      return null;
    }

    return $PostCopyWith<$Res>(_value.post!, (value) {
      return _then(_value.copyWith(post: value));
    });
  }
}

/// @nodoc
abstract class _$$_ReImaginedStateCopyWith<$Res>
    implements $ReImaginedStateCopyWith<$Res> {
  factory _$$_ReImaginedStateCopyWith(
          _$_ReImaginedState value, $Res Function(_$_ReImaginedState) then) =
      __$$_ReImaginedStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Post? post,
      List<ReImagined?> reImagined,
      ReImaginedStatus status,
      Exception? failure});

  @override
  $PostCopyWith<$Res>? get post;
}

/// @nodoc
class __$$_ReImaginedStateCopyWithImpl<$Res>
    extends _$ReImaginedStateCopyWithImpl<$Res>
    implements _$$_ReImaginedStateCopyWith<$Res> {
  __$$_ReImaginedStateCopyWithImpl(
      _$_ReImaginedState _value, $Res Function(_$_ReImaginedState) _then)
      : super(_value, (v) => _then(v as _$_ReImaginedState));

  @override
  _$_ReImaginedState get _value => super._value as _$_ReImaginedState;

  @override
  $Res call({
    Object? post = freezed,
    Object? reImagined = freezed,
    Object? status = freezed,
    Object? failure = freezed,
  }) {
    return _then(_$_ReImaginedState(
      post: post == freezed
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as Post?,
      reImagined: reImagined == freezed
          ? _value._reImagined
          : reImagined // ignore: cast_nullable_to_non_nullable
              as List<ReImagined?>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ReImaginedStatus,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ));
  }
}

/// @nodoc

class _$_ReImaginedState implements _ReImaginedState {
  const _$_ReImaginedState(
      {required this.post,
      required final List<ReImagined?> reImagined,
      required this.status,
      required this.failure})
      : _reImagined = reImagined;

  @override
  final Post? post;
  final List<ReImagined?> _reImagined;
  @override
  List<ReImagined?> get reImagined {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reImagined);
  }

  @override
  final ReImaginedStatus status;
  @override
  final Exception? failure;

  @override
  String toString() {
    return 'ReImaginedState(post: $post, reImagined: $reImagined, status: $status, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReImaginedState &&
            const DeepCollectionEquality().equals(other.post, post) &&
            const DeepCollectionEquality()
                .equals(other._reImagined, _reImagined) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(post),
      const DeepCollectionEquality().hash(_reImagined),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$$_ReImaginedStateCopyWith<_$_ReImaginedState> get copyWith =>
      __$$_ReImaginedStateCopyWithImpl<_$_ReImaginedState>(this, _$identity);
}

abstract class _ReImaginedState implements ReImaginedState {
  const factory _ReImaginedState(
      {required final Post? post,
      required final List<ReImagined?> reImagined,
      required final ReImaginedStatus status,
      required final Exception? failure}) = _$_ReImaginedState;

  @override
  Post? get post;
  @override
  List<ReImagined?> get reImagined;
  @override
  ReImaginedStatus get status;
  @override
  Exception? get failure;
  @override
  @JsonKey(ignore: true)
  _$$_ReImaginedStateCopyWith<_$_ReImaginedState> get copyWith =>
      throw _privateConstructorUsedError;
}
