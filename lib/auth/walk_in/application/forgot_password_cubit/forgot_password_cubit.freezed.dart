// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'forgot_password_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ForgotPasswordState {
  Username2Input get username => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  ConfirmationCode get confirmationCode => throw _privateConstructorUsedError;
  FormzStatus get status => throw _privateConstructorUsedError;
  AuthFailure? get authFailure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ForgotPasswordStateCopyWith<ForgotPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordStateCopyWith<$Res> {
  factory $ForgotPasswordStateCopyWith(
          ForgotPasswordState value, $Res Function(ForgotPasswordState) then) =
      _$ForgotPasswordStateCopyWithImpl<$Res>;
  $Res call(
      {Username2Input username,
      Password password,
      ConfirmationCode confirmationCode,
      FormzStatus status,
      AuthFailure? authFailure});

  $AuthFailureCopyWith<$Res>? get authFailure;
}

/// @nodoc
class _$ForgotPasswordStateCopyWithImpl<$Res>
    implements $ForgotPasswordStateCopyWith<$Res> {
  _$ForgotPasswordStateCopyWithImpl(this._value, this._then);

  final ForgotPasswordState _value;
  // ignore: unused_field
  final $Res Function(ForgotPasswordState) _then;

  @override
  $Res call({
    Object? username = freezed,
    Object? password = freezed,
    Object? confirmationCode = freezed,
    Object? status = freezed,
    Object? authFailure = freezed,
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
      confirmationCode: confirmationCode == freezed
          ? _value.confirmationCode
          : confirmationCode // ignore: cast_nullable_to_non_nullable
              as ConfirmationCode,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      authFailure: authFailure == freezed
          ? _value.authFailure
          : authFailure // ignore: cast_nullable_to_non_nullable
              as AuthFailure?,
    ));
  }

  @override
  $AuthFailureCopyWith<$Res>? get authFailure {
    if (_value.authFailure == null) {
      return null;
    }

    return $AuthFailureCopyWith<$Res>(_value.authFailure!, (value) {
      return _then(_value.copyWith(authFailure: value));
    });
  }
}

/// @nodoc
abstract class _$$_ForgotPasswordStateCopyWith<$Res>
    implements $ForgotPasswordStateCopyWith<$Res> {
  factory _$$_ForgotPasswordStateCopyWith(_$_ForgotPasswordState value,
          $Res Function(_$_ForgotPasswordState) then) =
      __$$_ForgotPasswordStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Username2Input username,
      Password password,
      ConfirmationCode confirmationCode,
      FormzStatus status,
      AuthFailure? authFailure});

  @override
  $AuthFailureCopyWith<$Res>? get authFailure;
}

/// @nodoc
class __$$_ForgotPasswordStateCopyWithImpl<$Res>
    extends _$ForgotPasswordStateCopyWithImpl<$Res>
    implements _$$_ForgotPasswordStateCopyWith<$Res> {
  __$$_ForgotPasswordStateCopyWithImpl(_$_ForgotPasswordState _value,
      $Res Function(_$_ForgotPasswordState) _then)
      : super(_value, (v) => _then(v as _$_ForgotPasswordState));

  @override
  _$_ForgotPasswordState get _value => super._value as _$_ForgotPasswordState;

  @override
  $Res call({
    Object? username = freezed,
    Object? password = freezed,
    Object? confirmationCode = freezed,
    Object? status = freezed,
    Object? authFailure = freezed,
  }) {
    return _then(_$_ForgotPasswordState(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as Username2Input,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      confirmationCode: confirmationCode == freezed
          ? _value.confirmationCode
          : confirmationCode // ignore: cast_nullable_to_non_nullable
              as ConfirmationCode,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      authFailure: authFailure == freezed
          ? _value.authFailure
          : authFailure // ignore: cast_nullable_to_non_nullable
              as AuthFailure?,
    ));
  }
}

/// @nodoc

class _$_ForgotPasswordState implements _ForgotPasswordState {
  const _$_ForgotPasswordState(
      {required this.username,
      required this.password,
      required this.confirmationCode,
      required this.status,
      required this.authFailure});

  @override
  final Username2Input username;
  @override
  final Password password;
  @override
  final ConfirmationCode confirmationCode;
  @override
  final FormzStatus status;
  @override
  final AuthFailure? authFailure;

  @override
  String toString() {
    return 'ForgotPasswordState(username: $username, password: $password, confirmationCode: $confirmationCode, status: $status, authFailure: $authFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ForgotPasswordState &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.confirmationCode, confirmationCode) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.authFailure, authFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(confirmationCode),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(authFailure));

  @JsonKey(ignore: true)
  @override
  _$$_ForgotPasswordStateCopyWith<_$_ForgotPasswordState> get copyWith =>
      __$$_ForgotPasswordStateCopyWithImpl<_$_ForgotPasswordState>(
          this, _$identity);
}

abstract class _ForgotPasswordState implements ForgotPasswordState {
  const factory _ForgotPasswordState(
      {required final Username2Input username,
      required final Password password,
      required final ConfirmationCode confirmationCode,
      required final FormzStatus status,
      required final AuthFailure? authFailure}) = _$_ForgotPasswordState;

  @override
  Username2Input get username => throw _privateConstructorUsedError;
  @override
  Password get password => throw _privateConstructorUsedError;
  @override
  ConfirmationCode get confirmationCode => throw _privateConstructorUsedError;
  @override
  FormzStatus get status => throw _privateConstructorUsedError;
  @override
  AuthFailure? get authFailure => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ForgotPasswordStateCopyWith<_$_ForgotPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}
