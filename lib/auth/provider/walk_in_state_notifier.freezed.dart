// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'walk_in_state_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WalkInState {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  WalkInStatus get status => throw _privateConstructorUsedError;
  Exception? get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WalkInStateCopyWith<WalkInState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalkInStateCopyWith<$Res> {
  factory $WalkInStateCopyWith(
          WalkInState value, $Res Function(WalkInState) then) =
      _$WalkInStateCopyWithImpl<$Res, WalkInState>;
  @useResult
  $Res call(
      {String email, String password, WalkInStatus status, Exception? failure});
}

/// @nodoc
class _$WalkInStateCopyWithImpl<$Res, $Val extends WalkInState>
    implements $WalkInStateCopyWith<$Res> {
  _$WalkInStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? status = null,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as WalkInStatus,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WalkInStateCopyWith<$Res>
    implements $WalkInStateCopyWith<$Res> {
  factory _$$_WalkInStateCopyWith(
          _$_WalkInState value, $Res Function(_$_WalkInState) then) =
      __$$_WalkInStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String email, String password, WalkInStatus status, Exception? failure});
}

/// @nodoc
class __$$_WalkInStateCopyWithImpl<$Res>
    extends _$WalkInStateCopyWithImpl<$Res, _$_WalkInState>
    implements _$$_WalkInStateCopyWith<$Res> {
  __$$_WalkInStateCopyWithImpl(
      _$_WalkInState _value, $Res Function(_$_WalkInState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? status = null,
    Object? failure = freezed,
  }) {
    return _then(_$_WalkInState(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as WalkInStatus,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ));
  }
}

/// @nodoc

class _$_WalkInState implements _WalkInState {
  const _$_WalkInState(
      {required this.email,
      required this.password,
      required this.status,
      required this.failure});

  @override
  final String email;
  @override
  final String password;
  @override
  final WalkInStatus status;
  @override
  final Exception? failure;

  @override
  String toString() {
    return 'WalkInState(email: $email, password: $password, status: $status, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WalkInState &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, email, password, status, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WalkInStateCopyWith<_$_WalkInState> get copyWith =>
      __$$_WalkInStateCopyWithImpl<_$_WalkInState>(this, _$identity);
}

abstract class _WalkInState implements WalkInState {
  const factory _WalkInState(
      {required final String email,
      required final String password,
      required final WalkInStatus status,
      required final Exception? failure}) = _$_WalkInState;

  @override
  String get email;
  @override
  String get password;
  @override
  WalkInStatus get status;
  @override
  Exception? get failure;
  @override
  @JsonKey(ignore: true)
  _$$_WalkInStateCopyWith<_$_WalkInState> get copyWith =>
      throw _privateConstructorUsedError;
}
