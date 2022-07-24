// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'confirm_reg_form_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ConfirmRegFormState {
  ConfirmationCode get confirmationCode => throw _privateConstructorUsedError;
  FormzStatus get status => throw _privateConstructorUsedError;
  AuthFailure get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConfirmRegFormStateCopyWith<ConfirmRegFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfirmRegFormStateCopyWith<$Res> {
  factory $ConfirmRegFormStateCopyWith(
          ConfirmRegFormState value, $Res Function(ConfirmRegFormState) then) =
      _$ConfirmRegFormStateCopyWithImpl<$Res>;
  $Res call(
      {ConfirmationCode confirmationCode,
      FormzStatus status,
      AuthFailure failure});

  $AuthFailureCopyWith<$Res> get failure;
}

/// @nodoc
class _$ConfirmRegFormStateCopyWithImpl<$Res>
    implements $ConfirmRegFormStateCopyWith<$Res> {
  _$ConfirmRegFormStateCopyWithImpl(this._value, this._then);

  final ConfirmRegFormState _value;
  // ignore: unused_field
  final $Res Function(ConfirmRegFormState) _then;

  @override
  $Res call({
    Object? confirmationCode = freezed,
    Object? status = freezed,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      confirmationCode: confirmationCode == freezed
          ? _value.confirmationCode
          : confirmationCode // ignore: cast_nullable_to_non_nullable
              as ConfirmationCode,
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
abstract class _$$_ConfirmRegFormStateCopyWith<$Res>
    implements $ConfirmRegFormStateCopyWith<$Res> {
  factory _$$_ConfirmRegFormStateCopyWith(_$_ConfirmRegFormState value,
          $Res Function(_$_ConfirmRegFormState) then) =
      __$$_ConfirmRegFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {ConfirmationCode confirmationCode,
      FormzStatus status,
      AuthFailure failure});

  @override
  $AuthFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_ConfirmRegFormStateCopyWithImpl<$Res>
    extends _$ConfirmRegFormStateCopyWithImpl<$Res>
    implements _$$_ConfirmRegFormStateCopyWith<$Res> {
  __$$_ConfirmRegFormStateCopyWithImpl(_$_ConfirmRegFormState _value,
      $Res Function(_$_ConfirmRegFormState) _then)
      : super(_value, (v) => _then(v as _$_ConfirmRegFormState));

  @override
  _$_ConfirmRegFormState get _value => super._value as _$_ConfirmRegFormState;

  @override
  $Res call({
    Object? confirmationCode = freezed,
    Object? status = freezed,
    Object? failure = freezed,
  }) {
    return _then(_$_ConfirmRegFormState(
      confirmationCode: confirmationCode == freezed
          ? _value.confirmationCode
          : confirmationCode // ignore: cast_nullable_to_non_nullable
              as ConfirmationCode,
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

class _$_ConfirmRegFormState implements _ConfirmRegFormState {
  const _$_ConfirmRegFormState(
      {required this.confirmationCode,
      required this.status,
      required this.failure});

  @override
  final ConfirmationCode confirmationCode;
  @override
  final FormzStatus status;
  @override
  final AuthFailure failure;

  @override
  String toString() {
    return 'ConfirmRegFormState(confirmationCode: $confirmationCode, status: $status, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConfirmRegFormState &&
            const DeepCollectionEquality()
                .equals(other.confirmationCode, confirmationCode) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(confirmationCode),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$$_ConfirmRegFormStateCopyWith<_$_ConfirmRegFormState> get copyWith =>
      __$$_ConfirmRegFormStateCopyWithImpl<_$_ConfirmRegFormState>(
          this, _$identity);
}

abstract class _ConfirmRegFormState implements ConfirmRegFormState {
  const factory _ConfirmRegFormState(
      {required final ConfirmationCode confirmationCode,
      required final FormzStatus status,
      required final AuthFailure failure}) = _$_ConfirmRegFormState;

  @override
  ConfirmationCode get confirmationCode => throw _privateConstructorUsedError;
  @override
  FormzStatus get status => throw _privateConstructorUsedError;
  @override
  AuthFailure get failure => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ConfirmRegFormStateCopyWith<_$_ConfirmRegFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
