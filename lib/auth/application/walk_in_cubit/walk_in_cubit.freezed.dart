// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'walk_in_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WalkInState {
  Email get email => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  FormzStatus get status => throw _privateConstructorUsedError;
  Exception? get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WalkInStateCopyWith<WalkInState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalkInStateCopyWith<$Res> {
  factory $WalkInStateCopyWith(
          WalkInState value, $Res Function(WalkInState) then) =
      _$WalkInStateCopyWithImpl<$Res>;
  $Res call(
      {Email email, Password password, FormzStatus status, Exception? failure});
}

/// @nodoc
class _$WalkInStateCopyWithImpl<$Res> implements $WalkInStateCopyWith<$Res> {
  _$WalkInStateCopyWithImpl(this._value, this._then);

  final WalkInState _value;
  // ignore: unused_field
  final $Res Function(WalkInState) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? status = freezed,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ));
  }
}

/// @nodoc
abstract class _$$_WalkInStateCopyWith<$Res>
    implements $WalkInStateCopyWith<$Res> {
  factory _$$_WalkInStateCopyWith(
          _$_WalkInState value, $Res Function(_$_WalkInState) then) =
      __$$_WalkInStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Email email, Password password, FormzStatus status, Exception? failure});
}

/// @nodoc
class __$$_WalkInStateCopyWithImpl<$Res> extends _$WalkInStateCopyWithImpl<$Res>
    implements _$$_WalkInStateCopyWith<$Res> {
  __$$_WalkInStateCopyWithImpl(
      _$_WalkInState _value, $Res Function(_$_WalkInState) _then)
      : super(_value, (v) => _then(v as _$_WalkInState));

  @override
  _$_WalkInState get _value => super._value as _$_WalkInState;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? status = freezed,
    Object? failure = freezed,
  }) {
    return _then(_$_WalkInState(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      failure: failure == freezed
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
  final Email email;
  @override
  final Password password;
  @override
  final FormzStatus status;
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
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$$_WalkInStateCopyWith<_$_WalkInState> get copyWith =>
      __$$_WalkInStateCopyWithImpl<_$_WalkInState>(this, _$identity);
}

abstract class _WalkInState implements WalkInState {
  const factory _WalkInState(
      {required final Email email,
      required final Password password,
      required final FormzStatus status,
      required final Exception? failure}) = _$_WalkInState;

  @override
  Email get email;
  @override
  Password get password;
  @override
  FormzStatus get status;
  @override
  Exception? get failure;
  @override
  @JsonKey(ignore: true)
  _$$_WalkInStateCopyWith<_$_WalkInState> get copyWith =>
      throw _privateConstructorUsedError;
}
