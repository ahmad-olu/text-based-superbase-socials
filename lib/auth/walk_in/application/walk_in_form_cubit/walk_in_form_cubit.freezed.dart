// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'walk_in_form_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WalkInFormState {
  Username2Input get username => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  FormzStatus get status => throw _privateConstructorUsedError;
  AuthFailure get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WalkInFormStateCopyWith<WalkInFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalkInFormStateCopyWith<$Res> {
  factory $WalkInFormStateCopyWith(
          WalkInFormState value, $Res Function(WalkInFormState) then) =
      _$WalkInFormStateCopyWithImpl<$Res>;
  $Res call(
      {Username2Input username,
      Password password,
      FormzStatus status,
      AuthFailure failure});

  $AuthFailureCopyWith<$Res> get failure;
}

/// @nodoc
class _$WalkInFormStateCopyWithImpl<$Res>
    implements $WalkInFormStateCopyWith<$Res> {
  _$WalkInFormStateCopyWithImpl(this._value, this._then);

  final WalkInFormState _value;
  // ignore: unused_field
  final $Res Function(WalkInFormState) _then;

  @override
  $Res call({
    Object? username = freezed,
    Object? password = freezed,
    Object? status = freezed,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as Username2Input,
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
              as AuthFailure,
    ));
  }

  @override
  $AuthFailureCopyWith<$Res> get failure {
    return $AuthFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
abstract class _$$_WalkInFormStateCopyWith<$Res>
    implements $WalkInFormStateCopyWith<$Res> {
  factory _$$_WalkInFormStateCopyWith(
          _$_WalkInFormState value, $Res Function(_$_WalkInFormState) then) =
      __$$_WalkInFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Username2Input username,
      Password password,
      FormzStatus status,
      AuthFailure failure});

  @override
  $AuthFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_WalkInFormStateCopyWithImpl<$Res>
    extends _$WalkInFormStateCopyWithImpl<$Res>
    implements _$$_WalkInFormStateCopyWith<$Res> {
  __$$_WalkInFormStateCopyWithImpl(
      _$_WalkInFormState _value, $Res Function(_$_WalkInFormState) _then)
      : super(_value, (v) => _then(v as _$_WalkInFormState));

  @override
  _$_WalkInFormState get _value => super._value as _$_WalkInFormState;

  @override
  $Res call({
    Object? username = freezed,
    Object? password = freezed,
    Object? status = freezed,
    Object? failure = freezed,
  }) {
    return _then(_$_WalkInFormState(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as Username2Input,
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
              as AuthFailure,
    ));
  }
}

/// @nodoc

class _$_WalkInFormState implements _WalkInFormState {
  const _$_WalkInFormState(
      {required this.username,
      required this.password,
      required this.status,
      required this.failure});

  @override
  final Username2Input username;
  @override
  final Password password;
  @override
  final FormzStatus status;
  @override
  final AuthFailure failure;

  @override
  String toString() {
    return 'WalkInFormState(username: $username, password: $password, status: $status, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WalkInFormState &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$$_WalkInFormStateCopyWith<_$_WalkInFormState> get copyWith =>
      __$$_WalkInFormStateCopyWithImpl<_$_WalkInFormState>(this, _$identity);
}

abstract class _WalkInFormState implements WalkInFormState {
  const factory _WalkInFormState(
      {required final Username2Input username,
      required final Password password,
      required final FormzStatus status,
      required final AuthFailure failure}) = _$_WalkInFormState;

  @override
  Username2Input get username => throw _privateConstructorUsedError;
  @override
  Password get password => throw _privateConstructorUsedError;
  @override
  FormzStatus get status => throw _privateConstructorUsedError;
  @override
  AuthFailure get failure => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_WalkInFormStateCopyWith<_$_WalkInFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
