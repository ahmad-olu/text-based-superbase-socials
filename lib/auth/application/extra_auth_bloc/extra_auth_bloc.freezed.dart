// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'extra_auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ExtraAuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() sendEmailVerification,
    required TResult Function(String? email) forgotPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? sendEmailVerification,
    TResult Function(String? email)? forgotPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? sendEmailVerification,
    TResult Function(String? email)? forgotPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendEmailVerification value)
        sendEmailVerification,
    required TResult Function(_ForgotPassword value) forgotPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SendEmailVerification value)? sendEmailVerification,
    TResult Function(_ForgotPassword value)? forgotPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendEmailVerification value)? sendEmailVerification,
    TResult Function(_ForgotPassword value)? forgotPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExtraAuthEventCopyWith<$Res> {
  factory $ExtraAuthEventCopyWith(
          ExtraAuthEvent value, $Res Function(ExtraAuthEvent) then) =
      _$ExtraAuthEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ExtraAuthEventCopyWithImpl<$Res>
    implements $ExtraAuthEventCopyWith<$Res> {
  _$ExtraAuthEventCopyWithImpl(this._value, this._then);

  final ExtraAuthEvent _value;
  // ignore: unused_field
  final $Res Function(ExtraAuthEvent) _then;
}

/// @nodoc
abstract class _$$_SendEmailVerificationCopyWith<$Res> {
  factory _$$_SendEmailVerificationCopyWith(_$_SendEmailVerification value,
          $Res Function(_$_SendEmailVerification) then) =
      __$$_SendEmailVerificationCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SendEmailVerificationCopyWithImpl<$Res>
    extends _$ExtraAuthEventCopyWithImpl<$Res>
    implements _$$_SendEmailVerificationCopyWith<$Res> {
  __$$_SendEmailVerificationCopyWithImpl(_$_SendEmailVerification _value,
      $Res Function(_$_SendEmailVerification) _then)
      : super(_value, (v) => _then(v as _$_SendEmailVerification));

  @override
  _$_SendEmailVerification get _value =>
      super._value as _$_SendEmailVerification;
}

/// @nodoc

class _$_SendEmailVerification implements _SendEmailVerification {
  const _$_SendEmailVerification();

  @override
  String toString() {
    return 'ExtraAuthEvent.sendEmailVerification()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SendEmailVerification);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() sendEmailVerification,
    required TResult Function(String? email) forgotPassword,
  }) {
    return sendEmailVerification();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? sendEmailVerification,
    TResult Function(String? email)? forgotPassword,
  }) {
    return sendEmailVerification?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? sendEmailVerification,
    TResult Function(String? email)? forgotPassword,
    required TResult orElse(),
  }) {
    if (sendEmailVerification != null) {
      return sendEmailVerification();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendEmailVerification value)
        sendEmailVerification,
    required TResult Function(_ForgotPassword value) forgotPassword,
  }) {
    return sendEmailVerification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SendEmailVerification value)? sendEmailVerification,
    TResult Function(_ForgotPassword value)? forgotPassword,
  }) {
    return sendEmailVerification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendEmailVerification value)? sendEmailVerification,
    TResult Function(_ForgotPassword value)? forgotPassword,
    required TResult orElse(),
  }) {
    if (sendEmailVerification != null) {
      return sendEmailVerification(this);
    }
    return orElse();
  }
}

abstract class _SendEmailVerification implements ExtraAuthEvent {
  const factory _SendEmailVerification() = _$_SendEmailVerification;
}

/// @nodoc
abstract class _$$_ForgotPasswordCopyWith<$Res> {
  factory _$$_ForgotPasswordCopyWith(
          _$_ForgotPassword value, $Res Function(_$_ForgotPassword) then) =
      __$$_ForgotPasswordCopyWithImpl<$Res>;
  $Res call({String? email});
}

/// @nodoc
class __$$_ForgotPasswordCopyWithImpl<$Res>
    extends _$ExtraAuthEventCopyWithImpl<$Res>
    implements _$$_ForgotPasswordCopyWith<$Res> {
  __$$_ForgotPasswordCopyWithImpl(
      _$_ForgotPassword _value, $Res Function(_$_ForgotPassword) _then)
      : super(_value, (v) => _then(v as _$_ForgotPassword));

  @override
  _$_ForgotPassword get _value => super._value as _$_ForgotPassword;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_$_ForgotPassword(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ForgotPassword implements _ForgotPassword {
  const _$_ForgotPassword({required this.email});

  @override
  final String? email;

  @override
  String toString() {
    return 'ExtraAuthEvent.forgotPassword(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ForgotPassword &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  _$$_ForgotPasswordCopyWith<_$_ForgotPassword> get copyWith =>
      __$$_ForgotPasswordCopyWithImpl<_$_ForgotPassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() sendEmailVerification,
    required TResult Function(String? email) forgotPassword,
  }) {
    return forgotPassword(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? sendEmailVerification,
    TResult Function(String? email)? forgotPassword,
  }) {
    return forgotPassword?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? sendEmailVerification,
    TResult Function(String? email)? forgotPassword,
    required TResult orElse(),
  }) {
    if (forgotPassword != null) {
      return forgotPassword(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendEmailVerification value)
        sendEmailVerification,
    required TResult Function(_ForgotPassword value) forgotPassword,
  }) {
    return forgotPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SendEmailVerification value)? sendEmailVerification,
    TResult Function(_ForgotPassword value)? forgotPassword,
  }) {
    return forgotPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendEmailVerification value)? sendEmailVerification,
    TResult Function(_ForgotPassword value)? forgotPassword,
    required TResult orElse(),
  }) {
    if (forgotPassword != null) {
      return forgotPassword(this);
    }
    return orElse();
  }
}

abstract class _ForgotPassword implements ExtraAuthEvent {
  const factory _ForgotPassword({required final String? email}) =
      _$_ForgotPassword;

  String? get email;
  @JsonKey(ignore: true)
  _$$_ForgotPasswordCopyWith<_$_ForgotPassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ExtraAuthState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get sent => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading, bool sent) initial,
    required TResult Function(bool isLoading, Exception? exception, bool sent)
        forgotPasswordState,
    required TResult Function(bool isLoading, bool sent) needsVerification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isLoading, bool sent)? initial,
    TResult Function(bool isLoading, Exception? exception, bool sent)?
        forgotPasswordState,
    TResult Function(bool isLoading, bool sent)? needsVerification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, bool sent)? initial,
    TResult Function(bool isLoading, Exception? exception, bool sent)?
        forgotPasswordState,
    TResult Function(bool isLoading, bool sent)? needsVerification,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ForgotPasswordState value) forgotPasswordState,
    required TResult Function(_NeedsVerification value) needsVerification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ForgotPasswordState value)? forgotPasswordState,
    TResult Function(_NeedsVerification value)? needsVerification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ForgotPasswordState value)? forgotPasswordState,
    TResult Function(_NeedsVerification value)? needsVerification,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExtraAuthStateCopyWith<ExtraAuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExtraAuthStateCopyWith<$Res> {
  factory $ExtraAuthStateCopyWith(
          ExtraAuthState value, $Res Function(ExtraAuthState) then) =
      _$ExtraAuthStateCopyWithImpl<$Res>;
  $Res call({bool isLoading, bool sent});
}

/// @nodoc
class _$ExtraAuthStateCopyWithImpl<$Res>
    implements $ExtraAuthStateCopyWith<$Res> {
  _$ExtraAuthStateCopyWithImpl(this._value, this._then);

  final ExtraAuthState _value;
  // ignore: unused_field
  final $Res Function(ExtraAuthState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? sent = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      sent: sent == freezed
          ? _value.sent
          : sent // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $ExtraAuthStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading, bool sent});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$ExtraAuthStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? sent = freezed,
  }) {
    return _then(_$_Initial(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      sent: sent == freezed
          ? _value.sent
          : sent // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial({required this.isLoading, required this.sent});

  @override
  final bool isLoading;
  @override
  final bool sent;

  @override
  String toString() {
    return 'ExtraAuthState.initial(isLoading: $isLoading, sent: $sent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.sent, sent));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(sent));

  @JsonKey(ignore: true)
  @override
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading, bool sent) initial,
    required TResult Function(bool isLoading, Exception? exception, bool sent)
        forgotPasswordState,
    required TResult Function(bool isLoading, bool sent) needsVerification,
  }) {
    return initial(isLoading, sent);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isLoading, bool sent)? initial,
    TResult Function(bool isLoading, Exception? exception, bool sent)?
        forgotPasswordState,
    TResult Function(bool isLoading, bool sent)? needsVerification,
  }) {
    return initial?.call(isLoading, sent);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, bool sent)? initial,
    TResult Function(bool isLoading, Exception? exception, bool sent)?
        forgotPasswordState,
    TResult Function(bool isLoading, bool sent)? needsVerification,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(isLoading, sent);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ForgotPasswordState value) forgotPasswordState,
    required TResult Function(_NeedsVerification value) needsVerification,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ForgotPasswordState value)? forgotPasswordState,
    TResult Function(_NeedsVerification value)? needsVerification,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ForgotPasswordState value)? forgotPasswordState,
    TResult Function(_NeedsVerification value)? needsVerification,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ExtraAuthState {
  const factory _Initial(
      {required final bool isLoading, required final bool sent}) = _$_Initial;

  @override
  bool get isLoading;
  @override
  bool get sent;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ForgotPasswordStateCopyWith<$Res>
    implements $ExtraAuthStateCopyWith<$Res> {
  factory _$$_ForgotPasswordStateCopyWith(_$_ForgotPasswordState value,
          $Res Function(_$_ForgotPasswordState) then) =
      __$$_ForgotPasswordStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading, Exception? exception, bool sent});
}

/// @nodoc
class __$$_ForgotPasswordStateCopyWithImpl<$Res>
    extends _$ExtraAuthStateCopyWithImpl<$Res>
    implements _$$_ForgotPasswordStateCopyWith<$Res> {
  __$$_ForgotPasswordStateCopyWithImpl(_$_ForgotPasswordState _value,
      $Res Function(_$_ForgotPasswordState) _then)
      : super(_value, (v) => _then(v as _$_ForgotPasswordState));

  @override
  _$_ForgotPasswordState get _value => super._value as _$_ForgotPasswordState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? exception = freezed,
    Object? sent = freezed,
  }) {
    return _then(_$_ForgotPasswordState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      exception: exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception?,
      sent: sent == freezed
          ? _value.sent
          : sent // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ForgotPasswordState implements _ForgotPasswordState {
  const _$_ForgotPasswordState(
      {required this.isLoading, required this.exception, required this.sent});

  @override
  final bool isLoading;
  @override
  final Exception? exception;
  @override
  final bool sent;

  @override
  String toString() {
    return 'ExtraAuthState.forgotPasswordState(isLoading: $isLoading, exception: $exception, sent: $sent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ForgotPasswordState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.exception, exception) &&
            const DeepCollectionEquality().equals(other.sent, sent));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(exception),
      const DeepCollectionEquality().hash(sent));

  @JsonKey(ignore: true)
  @override
  _$$_ForgotPasswordStateCopyWith<_$_ForgotPasswordState> get copyWith =>
      __$$_ForgotPasswordStateCopyWithImpl<_$_ForgotPasswordState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading, bool sent) initial,
    required TResult Function(bool isLoading, Exception? exception, bool sent)
        forgotPasswordState,
    required TResult Function(bool isLoading, bool sent) needsVerification,
  }) {
    return forgotPasswordState(isLoading, exception, sent);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isLoading, bool sent)? initial,
    TResult Function(bool isLoading, Exception? exception, bool sent)?
        forgotPasswordState,
    TResult Function(bool isLoading, bool sent)? needsVerification,
  }) {
    return forgotPasswordState?.call(isLoading, exception, sent);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, bool sent)? initial,
    TResult Function(bool isLoading, Exception? exception, bool sent)?
        forgotPasswordState,
    TResult Function(bool isLoading, bool sent)? needsVerification,
    required TResult orElse(),
  }) {
    if (forgotPasswordState != null) {
      return forgotPasswordState(isLoading, exception, sent);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ForgotPasswordState value) forgotPasswordState,
    required TResult Function(_NeedsVerification value) needsVerification,
  }) {
    return forgotPasswordState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ForgotPasswordState value)? forgotPasswordState,
    TResult Function(_NeedsVerification value)? needsVerification,
  }) {
    return forgotPasswordState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ForgotPasswordState value)? forgotPasswordState,
    TResult Function(_NeedsVerification value)? needsVerification,
    required TResult orElse(),
  }) {
    if (forgotPasswordState != null) {
      return forgotPasswordState(this);
    }
    return orElse();
  }
}

abstract class _ForgotPasswordState implements ExtraAuthState {
  const factory _ForgotPasswordState(
      {required final bool isLoading,
      required final Exception? exception,
      required final bool sent}) = _$_ForgotPasswordState;

  @override
  bool get isLoading;
  Exception? get exception;
  @override
  bool get sent;
  @override
  @JsonKey(ignore: true)
  _$$_ForgotPasswordStateCopyWith<_$_ForgotPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NeedsVerificationCopyWith<$Res>
    implements $ExtraAuthStateCopyWith<$Res> {
  factory _$$_NeedsVerificationCopyWith(_$_NeedsVerification value,
          $Res Function(_$_NeedsVerification) then) =
      __$$_NeedsVerificationCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading, bool sent});
}

/// @nodoc
class __$$_NeedsVerificationCopyWithImpl<$Res>
    extends _$ExtraAuthStateCopyWithImpl<$Res>
    implements _$$_NeedsVerificationCopyWith<$Res> {
  __$$_NeedsVerificationCopyWithImpl(
      _$_NeedsVerification _value, $Res Function(_$_NeedsVerification) _then)
      : super(_value, (v) => _then(v as _$_NeedsVerification));

  @override
  _$_NeedsVerification get _value => super._value as _$_NeedsVerification;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? sent = freezed,
  }) {
    return _then(_$_NeedsVerification(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      sent: sent == freezed
          ? _value.sent
          : sent // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_NeedsVerification implements _NeedsVerification {
  const _$_NeedsVerification({required this.isLoading, required this.sent});

  @override
  final bool isLoading;
  @override
  final bool sent;

  @override
  String toString() {
    return 'ExtraAuthState.needsVerification(isLoading: $isLoading, sent: $sent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NeedsVerification &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.sent, sent));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(sent));

  @JsonKey(ignore: true)
  @override
  _$$_NeedsVerificationCopyWith<_$_NeedsVerification> get copyWith =>
      __$$_NeedsVerificationCopyWithImpl<_$_NeedsVerification>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading, bool sent) initial,
    required TResult Function(bool isLoading, Exception? exception, bool sent)
        forgotPasswordState,
    required TResult Function(bool isLoading, bool sent) needsVerification,
  }) {
    return needsVerification(isLoading, sent);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isLoading, bool sent)? initial,
    TResult Function(bool isLoading, Exception? exception, bool sent)?
        forgotPasswordState,
    TResult Function(bool isLoading, bool sent)? needsVerification,
  }) {
    return needsVerification?.call(isLoading, sent);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, bool sent)? initial,
    TResult Function(bool isLoading, Exception? exception, bool sent)?
        forgotPasswordState,
    TResult Function(bool isLoading, bool sent)? needsVerification,
    required TResult orElse(),
  }) {
    if (needsVerification != null) {
      return needsVerification(isLoading, sent);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ForgotPasswordState value) forgotPasswordState,
    required TResult Function(_NeedsVerification value) needsVerification,
  }) {
    return needsVerification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ForgotPasswordState value)? forgotPasswordState,
    TResult Function(_NeedsVerification value)? needsVerification,
  }) {
    return needsVerification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ForgotPasswordState value)? forgotPasswordState,
    TResult Function(_NeedsVerification value)? needsVerification,
    required TResult orElse(),
  }) {
    if (needsVerification != null) {
      return needsVerification(this);
    }
    return orElse();
  }
}

abstract class _NeedsVerification implements ExtraAuthState {
  const factory _NeedsVerification(
      {required final bool isLoading,
      required final bool sent}) = _$_NeedsVerification;

  @override
  bool get isLoading;
  @override
  bool get sent;
  @override
  @JsonKey(ignore: true)
  _$$_NeedsVerificationCopyWith<_$_NeedsVerification> get copyWith =>
      throw _privateConstructorUsedError;
}
