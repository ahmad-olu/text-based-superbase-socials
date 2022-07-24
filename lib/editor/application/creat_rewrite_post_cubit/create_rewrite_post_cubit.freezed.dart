// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'create_rewrite_post_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreateRewritePostState {
  String get contents => throw _privateConstructorUsedError;
  CreateRewritePostStatus get status => throw _privateConstructorUsedError;
  GeatFailure get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateRewritePostStateCopyWith<CreateRewritePostState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateRewritePostStateCopyWith<$Res> {
  factory $CreateRewritePostStateCopyWith(CreateRewritePostState value,
          $Res Function(CreateRewritePostState) then) =
      _$CreateRewritePostStateCopyWithImpl<$Res>;
  $Res call(
      {String contents, CreateRewritePostStatus status, GeatFailure failure});

  $GeatFailureCopyWith<$Res> get failure;
}

/// @nodoc
class _$CreateRewritePostStateCopyWithImpl<$Res>
    implements $CreateRewritePostStateCopyWith<$Res> {
  _$CreateRewritePostStateCopyWithImpl(this._value, this._then);

  final CreateRewritePostState _value;
  // ignore: unused_field
  final $Res Function(CreateRewritePostState) _then;

  @override
  $Res call({
    Object? contents = freezed,
    Object? status = freezed,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      contents: contents == freezed
          ? _value.contents
          : contents // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CreateRewritePostStatus,
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
abstract class _$$_CreateRewritePostStateCopyWith<$Res>
    implements $CreateRewritePostStateCopyWith<$Res> {
  factory _$$_CreateRewritePostStateCopyWith(_$_CreateRewritePostState value,
          $Res Function(_$_CreateRewritePostState) then) =
      __$$_CreateRewritePostStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String contents, CreateRewritePostStatus status, GeatFailure failure});

  @override
  $GeatFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_CreateRewritePostStateCopyWithImpl<$Res>
    extends _$CreateRewritePostStateCopyWithImpl<$Res>
    implements _$$_CreateRewritePostStateCopyWith<$Res> {
  __$$_CreateRewritePostStateCopyWithImpl(_$_CreateRewritePostState _value,
      $Res Function(_$_CreateRewritePostState) _then)
      : super(_value, (v) => _then(v as _$_CreateRewritePostState));

  @override
  _$_CreateRewritePostState get _value =>
      super._value as _$_CreateRewritePostState;

  @override
  $Res call({
    Object? contents = freezed,
    Object? status = freezed,
    Object? failure = freezed,
  }) {
    return _then(_$_CreateRewritePostState(
      contents: contents == freezed
          ? _value.contents
          : contents // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CreateRewritePostStatus,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as GeatFailure,
    ));
  }
}

/// @nodoc

class _$_CreateRewritePostState implements _CreateRewritePostState {
  const _$_CreateRewritePostState(
      {required this.contents, required this.status, required this.failure});

  @override
  final String contents;
  @override
  final CreateRewritePostStatus status;
  @override
  final GeatFailure failure;

  @override
  String toString() {
    return 'CreateRewritePostState(contents: $contents, status: $status, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateRewritePostState &&
            const DeepCollectionEquality().equals(other.contents, contents) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(contents),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$$_CreateRewritePostStateCopyWith<_$_CreateRewritePostState> get copyWith =>
      __$$_CreateRewritePostStateCopyWithImpl<_$_CreateRewritePostState>(
          this, _$identity);
}

abstract class _CreateRewritePostState implements CreateRewritePostState {
  const factory _CreateRewritePostState(
      {required final String contents,
      required final CreateRewritePostStatus status,
      required final GeatFailure failure}) = _$_CreateRewritePostState;

  @override
  String get contents => throw _privateConstructorUsedError;
  @override
  CreateRewritePostStatus get status => throw _privateConstructorUsedError;
  @override
  GeatFailure get failure => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CreateRewritePostStateCopyWith<_$_CreateRewritePostState> get copyWith =>
      throw _privateConstructorUsedError;
}
