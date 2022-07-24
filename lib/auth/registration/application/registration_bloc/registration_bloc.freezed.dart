// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'registration_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegistrationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String usernameStr) usernameChanged,
    required TResult Function() usernameUnfocused,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function() emailUnfocused,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function() passwordUnfocused,
    required TResult Function() formSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String usernameStr)? usernameChanged,
    TResult Function()? usernameUnfocused,
    TResult Function(String emailStr)? emailChanged,
    TResult Function()? emailUnfocused,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? passwordUnfocused,
    TResult Function()? formSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String usernameStr)? usernameChanged,
    TResult Function()? usernameUnfocused,
    TResult Function(String emailStr)? emailChanged,
    TResult Function()? emailUnfocused,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? passwordUnfocused,
    TResult Function()? formSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UsernameChanged value) usernameChanged,
    required TResult Function(_UsernameUnfocused value) usernameUnfocused,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_EmailUnfocused value) emailUnfocused,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_PasswordUnfocused value) passwordUnfocused,
    required TResult Function(_FormSubmitted value) formSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_UsernameUnfocused value)? usernameUnfocused,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_EmailUnfocused value)? emailUnfocused,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PasswordUnfocused value)? passwordUnfocused,
    TResult Function(_FormSubmitted value)? formSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_UsernameUnfocused value)? usernameUnfocused,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_EmailUnfocused value)? emailUnfocused,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PasswordUnfocused value)? passwordUnfocused,
    TResult Function(_FormSubmitted value)? formSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationEventCopyWith<$Res> {
  factory $RegistrationEventCopyWith(
          RegistrationEvent value, $Res Function(RegistrationEvent) then) =
      _$RegistrationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RegistrationEventCopyWithImpl<$Res>
    implements $RegistrationEventCopyWith<$Res> {
  _$RegistrationEventCopyWithImpl(this._value, this._then);

  final RegistrationEvent _value;
  // ignore: unused_field
  final $Res Function(RegistrationEvent) _then;
}

/// @nodoc
abstract class _$$_UsernameChangedCopyWith<$Res> {
  factory _$$_UsernameChangedCopyWith(
          _$_UsernameChanged value, $Res Function(_$_UsernameChanged) then) =
      __$$_UsernameChangedCopyWithImpl<$Res>;
  $Res call({String usernameStr});
}

/// @nodoc
class __$$_UsernameChangedCopyWithImpl<$Res>
    extends _$RegistrationEventCopyWithImpl<$Res>
    implements _$$_UsernameChangedCopyWith<$Res> {
  __$$_UsernameChangedCopyWithImpl(
      _$_UsernameChanged _value, $Res Function(_$_UsernameChanged) _then)
      : super(_value, (v) => _then(v as _$_UsernameChanged));

  @override
  _$_UsernameChanged get _value => super._value as _$_UsernameChanged;

  @override
  $Res call({
    Object? usernameStr = freezed,
  }) {
    return _then(_$_UsernameChanged(
      usernameStr: usernameStr == freezed
          ? _value.usernameStr
          : usernameStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UsernameChanged implements _UsernameChanged {
  const _$_UsernameChanged({required this.usernameStr});

  @override
  final String usernameStr;

  @override
  String toString() {
    return 'RegistrationEvent.usernameChanged(usernameStr: $usernameStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UsernameChanged &&
            const DeepCollectionEquality()
                .equals(other.usernameStr, usernameStr));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(usernameStr));

  @JsonKey(ignore: true)
  @override
  _$$_UsernameChangedCopyWith<_$_UsernameChanged> get copyWith =>
      __$$_UsernameChangedCopyWithImpl<_$_UsernameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String usernameStr) usernameChanged,
    required TResult Function() usernameUnfocused,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function() emailUnfocused,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function() passwordUnfocused,
    required TResult Function() formSubmitted,
  }) {
    return usernameChanged(usernameStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String usernameStr)? usernameChanged,
    TResult Function()? usernameUnfocused,
    TResult Function(String emailStr)? emailChanged,
    TResult Function()? emailUnfocused,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? passwordUnfocused,
    TResult Function()? formSubmitted,
  }) {
    return usernameChanged?.call(usernameStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String usernameStr)? usernameChanged,
    TResult Function()? usernameUnfocused,
    TResult Function(String emailStr)? emailChanged,
    TResult Function()? emailUnfocused,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? passwordUnfocused,
    TResult Function()? formSubmitted,
    required TResult orElse(),
  }) {
    if (usernameChanged != null) {
      return usernameChanged(usernameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UsernameChanged value) usernameChanged,
    required TResult Function(_UsernameUnfocused value) usernameUnfocused,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_EmailUnfocused value) emailUnfocused,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_PasswordUnfocused value) passwordUnfocused,
    required TResult Function(_FormSubmitted value) formSubmitted,
  }) {
    return usernameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_UsernameUnfocused value)? usernameUnfocused,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_EmailUnfocused value)? emailUnfocused,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PasswordUnfocused value)? passwordUnfocused,
    TResult Function(_FormSubmitted value)? formSubmitted,
  }) {
    return usernameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_UsernameUnfocused value)? usernameUnfocused,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_EmailUnfocused value)? emailUnfocused,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PasswordUnfocused value)? passwordUnfocused,
    TResult Function(_FormSubmitted value)? formSubmitted,
    required TResult orElse(),
  }) {
    if (usernameChanged != null) {
      return usernameChanged(this);
    }
    return orElse();
  }
}

abstract class _UsernameChanged implements RegistrationEvent {
  const factory _UsernameChanged({required final String usernameStr}) =
      _$_UsernameChanged;

  String get usernameStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_UsernameChangedCopyWith<_$_UsernameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UsernameUnfocusedCopyWith<$Res> {
  factory _$$_UsernameUnfocusedCopyWith(_$_UsernameUnfocused value,
          $Res Function(_$_UsernameUnfocused) then) =
      __$$_UsernameUnfocusedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UsernameUnfocusedCopyWithImpl<$Res>
    extends _$RegistrationEventCopyWithImpl<$Res>
    implements _$$_UsernameUnfocusedCopyWith<$Res> {
  __$$_UsernameUnfocusedCopyWithImpl(
      _$_UsernameUnfocused _value, $Res Function(_$_UsernameUnfocused) _then)
      : super(_value, (v) => _then(v as _$_UsernameUnfocused));

  @override
  _$_UsernameUnfocused get _value => super._value as _$_UsernameUnfocused;
}

/// @nodoc

class _$_UsernameUnfocused implements _UsernameUnfocused {
  const _$_UsernameUnfocused();

  @override
  String toString() {
    return 'RegistrationEvent.usernameUnfocused()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UsernameUnfocused);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String usernameStr) usernameChanged,
    required TResult Function() usernameUnfocused,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function() emailUnfocused,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function() passwordUnfocused,
    required TResult Function() formSubmitted,
  }) {
    return usernameUnfocused();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String usernameStr)? usernameChanged,
    TResult Function()? usernameUnfocused,
    TResult Function(String emailStr)? emailChanged,
    TResult Function()? emailUnfocused,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? passwordUnfocused,
    TResult Function()? formSubmitted,
  }) {
    return usernameUnfocused?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String usernameStr)? usernameChanged,
    TResult Function()? usernameUnfocused,
    TResult Function(String emailStr)? emailChanged,
    TResult Function()? emailUnfocused,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? passwordUnfocused,
    TResult Function()? formSubmitted,
    required TResult orElse(),
  }) {
    if (usernameUnfocused != null) {
      return usernameUnfocused();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UsernameChanged value) usernameChanged,
    required TResult Function(_UsernameUnfocused value) usernameUnfocused,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_EmailUnfocused value) emailUnfocused,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_PasswordUnfocused value) passwordUnfocused,
    required TResult Function(_FormSubmitted value) formSubmitted,
  }) {
    return usernameUnfocused(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_UsernameUnfocused value)? usernameUnfocused,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_EmailUnfocused value)? emailUnfocused,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PasswordUnfocused value)? passwordUnfocused,
    TResult Function(_FormSubmitted value)? formSubmitted,
  }) {
    return usernameUnfocused?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_UsernameUnfocused value)? usernameUnfocused,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_EmailUnfocused value)? emailUnfocused,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PasswordUnfocused value)? passwordUnfocused,
    TResult Function(_FormSubmitted value)? formSubmitted,
    required TResult orElse(),
  }) {
    if (usernameUnfocused != null) {
      return usernameUnfocused(this);
    }
    return orElse();
  }
}

abstract class _UsernameUnfocused implements RegistrationEvent {
  const factory _UsernameUnfocused() = _$_UsernameUnfocused;
}

/// @nodoc
abstract class _$$_EmailChangedCopyWith<$Res> {
  factory _$$_EmailChangedCopyWith(
          _$_EmailChanged value, $Res Function(_$_EmailChanged) then) =
      __$$_EmailChangedCopyWithImpl<$Res>;
  $Res call({String emailStr});
}

/// @nodoc
class __$$_EmailChangedCopyWithImpl<$Res>
    extends _$RegistrationEventCopyWithImpl<$Res>
    implements _$$_EmailChangedCopyWith<$Res> {
  __$$_EmailChangedCopyWithImpl(
      _$_EmailChanged _value, $Res Function(_$_EmailChanged) _then)
      : super(_value, (v) => _then(v as _$_EmailChanged));

  @override
  _$_EmailChanged get _value => super._value as _$_EmailChanged;

  @override
  $Res call({
    Object? emailStr = freezed,
  }) {
    return _then(_$_EmailChanged(
      emailStr: emailStr == freezed
          ? _value.emailStr
          : emailStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EmailChanged implements _EmailChanged {
  const _$_EmailChanged({required this.emailStr});

  @override
  final String emailStr;

  @override
  String toString() {
    return 'RegistrationEvent.emailChanged(emailStr: $emailStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmailChanged &&
            const DeepCollectionEquality().equals(other.emailStr, emailStr));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(emailStr));

  @JsonKey(ignore: true)
  @override
  _$$_EmailChangedCopyWith<_$_EmailChanged> get copyWith =>
      __$$_EmailChangedCopyWithImpl<_$_EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String usernameStr) usernameChanged,
    required TResult Function() usernameUnfocused,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function() emailUnfocused,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function() passwordUnfocused,
    required TResult Function() formSubmitted,
  }) {
    return emailChanged(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String usernameStr)? usernameChanged,
    TResult Function()? usernameUnfocused,
    TResult Function(String emailStr)? emailChanged,
    TResult Function()? emailUnfocused,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? passwordUnfocused,
    TResult Function()? formSubmitted,
  }) {
    return emailChanged?.call(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String usernameStr)? usernameChanged,
    TResult Function()? usernameUnfocused,
    TResult Function(String emailStr)? emailChanged,
    TResult Function()? emailUnfocused,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? passwordUnfocused,
    TResult Function()? formSubmitted,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(emailStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UsernameChanged value) usernameChanged,
    required TResult Function(_UsernameUnfocused value) usernameUnfocused,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_EmailUnfocused value) emailUnfocused,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_PasswordUnfocused value) passwordUnfocused,
    required TResult Function(_FormSubmitted value) formSubmitted,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_UsernameUnfocused value)? usernameUnfocused,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_EmailUnfocused value)? emailUnfocused,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PasswordUnfocused value)? passwordUnfocused,
    TResult Function(_FormSubmitted value)? formSubmitted,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_UsernameUnfocused value)? usernameUnfocused,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_EmailUnfocused value)? emailUnfocused,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PasswordUnfocused value)? passwordUnfocused,
    TResult Function(_FormSubmitted value)? formSubmitted,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChanged implements RegistrationEvent {
  const factory _EmailChanged({required final String emailStr}) =
      _$_EmailChanged;

  String get emailStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_EmailChangedCopyWith<_$_EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EmailUnfocusedCopyWith<$Res> {
  factory _$$_EmailUnfocusedCopyWith(
          _$_EmailUnfocused value, $Res Function(_$_EmailUnfocused) then) =
      __$$_EmailUnfocusedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_EmailUnfocusedCopyWithImpl<$Res>
    extends _$RegistrationEventCopyWithImpl<$Res>
    implements _$$_EmailUnfocusedCopyWith<$Res> {
  __$$_EmailUnfocusedCopyWithImpl(
      _$_EmailUnfocused _value, $Res Function(_$_EmailUnfocused) _then)
      : super(_value, (v) => _then(v as _$_EmailUnfocused));

  @override
  _$_EmailUnfocused get _value => super._value as _$_EmailUnfocused;
}

/// @nodoc

class _$_EmailUnfocused implements _EmailUnfocused {
  const _$_EmailUnfocused();

  @override
  String toString() {
    return 'RegistrationEvent.emailUnfocused()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_EmailUnfocused);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String usernameStr) usernameChanged,
    required TResult Function() usernameUnfocused,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function() emailUnfocused,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function() passwordUnfocused,
    required TResult Function() formSubmitted,
  }) {
    return emailUnfocused();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String usernameStr)? usernameChanged,
    TResult Function()? usernameUnfocused,
    TResult Function(String emailStr)? emailChanged,
    TResult Function()? emailUnfocused,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? passwordUnfocused,
    TResult Function()? formSubmitted,
  }) {
    return emailUnfocused?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String usernameStr)? usernameChanged,
    TResult Function()? usernameUnfocused,
    TResult Function(String emailStr)? emailChanged,
    TResult Function()? emailUnfocused,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? passwordUnfocused,
    TResult Function()? formSubmitted,
    required TResult orElse(),
  }) {
    if (emailUnfocused != null) {
      return emailUnfocused();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UsernameChanged value) usernameChanged,
    required TResult Function(_UsernameUnfocused value) usernameUnfocused,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_EmailUnfocused value) emailUnfocused,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_PasswordUnfocused value) passwordUnfocused,
    required TResult Function(_FormSubmitted value) formSubmitted,
  }) {
    return emailUnfocused(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_UsernameUnfocused value)? usernameUnfocused,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_EmailUnfocused value)? emailUnfocused,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PasswordUnfocused value)? passwordUnfocused,
    TResult Function(_FormSubmitted value)? formSubmitted,
  }) {
    return emailUnfocused?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_UsernameUnfocused value)? usernameUnfocused,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_EmailUnfocused value)? emailUnfocused,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PasswordUnfocused value)? passwordUnfocused,
    TResult Function(_FormSubmitted value)? formSubmitted,
    required TResult orElse(),
  }) {
    if (emailUnfocused != null) {
      return emailUnfocused(this);
    }
    return orElse();
  }
}

abstract class _EmailUnfocused implements RegistrationEvent {
  const factory _EmailUnfocused() = _$_EmailUnfocused;
}

/// @nodoc
abstract class _$$_PasswordChangedCopyWith<$Res> {
  factory _$$_PasswordChangedCopyWith(
          _$_PasswordChanged value, $Res Function(_$_PasswordChanged) then) =
      __$$_PasswordChangedCopyWithImpl<$Res>;
  $Res call({String passwordStr});
}

/// @nodoc
class __$$_PasswordChangedCopyWithImpl<$Res>
    extends _$RegistrationEventCopyWithImpl<$Res>
    implements _$$_PasswordChangedCopyWith<$Res> {
  __$$_PasswordChangedCopyWithImpl(
      _$_PasswordChanged _value, $Res Function(_$_PasswordChanged) _then)
      : super(_value, (v) => _then(v as _$_PasswordChanged));

  @override
  _$_PasswordChanged get _value => super._value as _$_PasswordChanged;

  @override
  $Res call({
    Object? passwordStr = freezed,
  }) {
    return _then(_$_PasswordChanged(
      passwordStr: passwordStr == freezed
          ? _value.passwordStr
          : passwordStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PasswordChanged implements _PasswordChanged {
  const _$_PasswordChanged({required this.passwordStr});

  @override
  final String passwordStr;

  @override
  String toString() {
    return 'RegistrationEvent.passwordChanged(passwordStr: $passwordStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PasswordChanged &&
            const DeepCollectionEquality()
                .equals(other.passwordStr, passwordStr));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(passwordStr));

  @JsonKey(ignore: true)
  @override
  _$$_PasswordChangedCopyWith<_$_PasswordChanged> get copyWith =>
      __$$_PasswordChangedCopyWithImpl<_$_PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String usernameStr) usernameChanged,
    required TResult Function() usernameUnfocused,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function() emailUnfocused,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function() passwordUnfocused,
    required TResult Function() formSubmitted,
  }) {
    return passwordChanged(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String usernameStr)? usernameChanged,
    TResult Function()? usernameUnfocused,
    TResult Function(String emailStr)? emailChanged,
    TResult Function()? emailUnfocused,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? passwordUnfocused,
    TResult Function()? formSubmitted,
  }) {
    return passwordChanged?.call(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String usernameStr)? usernameChanged,
    TResult Function()? usernameUnfocused,
    TResult Function(String emailStr)? emailChanged,
    TResult Function()? emailUnfocused,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? passwordUnfocused,
    TResult Function()? formSubmitted,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(passwordStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UsernameChanged value) usernameChanged,
    required TResult Function(_UsernameUnfocused value) usernameUnfocused,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_EmailUnfocused value) emailUnfocused,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_PasswordUnfocused value) passwordUnfocused,
    required TResult Function(_FormSubmitted value) formSubmitted,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_UsernameUnfocused value)? usernameUnfocused,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_EmailUnfocused value)? emailUnfocused,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PasswordUnfocused value)? passwordUnfocused,
    TResult Function(_FormSubmitted value)? formSubmitted,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_UsernameUnfocused value)? usernameUnfocused,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_EmailUnfocused value)? emailUnfocused,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PasswordUnfocused value)? passwordUnfocused,
    TResult Function(_FormSubmitted value)? formSubmitted,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordChanged implements RegistrationEvent {
  const factory _PasswordChanged({required final String passwordStr}) =
      _$_PasswordChanged;

  String get passwordStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_PasswordChangedCopyWith<_$_PasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PasswordUnfocusedCopyWith<$Res> {
  factory _$$_PasswordUnfocusedCopyWith(_$_PasswordUnfocused value,
          $Res Function(_$_PasswordUnfocused) then) =
      __$$_PasswordUnfocusedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PasswordUnfocusedCopyWithImpl<$Res>
    extends _$RegistrationEventCopyWithImpl<$Res>
    implements _$$_PasswordUnfocusedCopyWith<$Res> {
  __$$_PasswordUnfocusedCopyWithImpl(
      _$_PasswordUnfocused _value, $Res Function(_$_PasswordUnfocused) _then)
      : super(_value, (v) => _then(v as _$_PasswordUnfocused));

  @override
  _$_PasswordUnfocused get _value => super._value as _$_PasswordUnfocused;
}

/// @nodoc

class _$_PasswordUnfocused implements _PasswordUnfocused {
  const _$_PasswordUnfocused();

  @override
  String toString() {
    return 'RegistrationEvent.passwordUnfocused()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PasswordUnfocused);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String usernameStr) usernameChanged,
    required TResult Function() usernameUnfocused,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function() emailUnfocused,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function() passwordUnfocused,
    required TResult Function() formSubmitted,
  }) {
    return passwordUnfocused();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String usernameStr)? usernameChanged,
    TResult Function()? usernameUnfocused,
    TResult Function(String emailStr)? emailChanged,
    TResult Function()? emailUnfocused,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? passwordUnfocused,
    TResult Function()? formSubmitted,
  }) {
    return passwordUnfocused?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String usernameStr)? usernameChanged,
    TResult Function()? usernameUnfocused,
    TResult Function(String emailStr)? emailChanged,
    TResult Function()? emailUnfocused,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? passwordUnfocused,
    TResult Function()? formSubmitted,
    required TResult orElse(),
  }) {
    if (passwordUnfocused != null) {
      return passwordUnfocused();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UsernameChanged value) usernameChanged,
    required TResult Function(_UsernameUnfocused value) usernameUnfocused,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_EmailUnfocused value) emailUnfocused,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_PasswordUnfocused value) passwordUnfocused,
    required TResult Function(_FormSubmitted value) formSubmitted,
  }) {
    return passwordUnfocused(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_UsernameUnfocused value)? usernameUnfocused,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_EmailUnfocused value)? emailUnfocused,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PasswordUnfocused value)? passwordUnfocused,
    TResult Function(_FormSubmitted value)? formSubmitted,
  }) {
    return passwordUnfocused?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_UsernameUnfocused value)? usernameUnfocused,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_EmailUnfocused value)? emailUnfocused,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PasswordUnfocused value)? passwordUnfocused,
    TResult Function(_FormSubmitted value)? formSubmitted,
    required TResult orElse(),
  }) {
    if (passwordUnfocused != null) {
      return passwordUnfocused(this);
    }
    return orElse();
  }
}

abstract class _PasswordUnfocused implements RegistrationEvent {
  const factory _PasswordUnfocused() = _$_PasswordUnfocused;
}

/// @nodoc
abstract class _$$_FormSubmittedCopyWith<$Res> {
  factory _$$_FormSubmittedCopyWith(
          _$_FormSubmitted value, $Res Function(_$_FormSubmitted) then) =
      __$$_FormSubmittedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FormSubmittedCopyWithImpl<$Res>
    extends _$RegistrationEventCopyWithImpl<$Res>
    implements _$$_FormSubmittedCopyWith<$Res> {
  __$$_FormSubmittedCopyWithImpl(
      _$_FormSubmitted _value, $Res Function(_$_FormSubmitted) _then)
      : super(_value, (v) => _then(v as _$_FormSubmitted));

  @override
  _$_FormSubmitted get _value => super._value as _$_FormSubmitted;
}

/// @nodoc

class _$_FormSubmitted implements _FormSubmitted {
  const _$_FormSubmitted();

  @override
  String toString() {
    return 'RegistrationEvent.formSubmitted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FormSubmitted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String usernameStr) usernameChanged,
    required TResult Function() usernameUnfocused,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function() emailUnfocused,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function() passwordUnfocused,
    required TResult Function() formSubmitted,
  }) {
    return formSubmitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String usernameStr)? usernameChanged,
    TResult Function()? usernameUnfocused,
    TResult Function(String emailStr)? emailChanged,
    TResult Function()? emailUnfocused,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? passwordUnfocused,
    TResult Function()? formSubmitted,
  }) {
    return formSubmitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String usernameStr)? usernameChanged,
    TResult Function()? usernameUnfocused,
    TResult Function(String emailStr)? emailChanged,
    TResult Function()? emailUnfocused,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function()? passwordUnfocused,
    TResult Function()? formSubmitted,
    required TResult orElse(),
  }) {
    if (formSubmitted != null) {
      return formSubmitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UsernameChanged value) usernameChanged,
    required TResult Function(_UsernameUnfocused value) usernameUnfocused,
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_EmailUnfocused value) emailUnfocused,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_PasswordUnfocused value) passwordUnfocused,
    required TResult Function(_FormSubmitted value) formSubmitted,
  }) {
    return formSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_UsernameUnfocused value)? usernameUnfocused,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_EmailUnfocused value)? emailUnfocused,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PasswordUnfocused value)? passwordUnfocused,
    TResult Function(_FormSubmitted value)? formSubmitted,
  }) {
    return formSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UsernameChanged value)? usernameChanged,
    TResult Function(_UsernameUnfocused value)? usernameUnfocused,
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_EmailUnfocused value)? emailUnfocused,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_PasswordUnfocused value)? passwordUnfocused,
    TResult Function(_FormSubmitted value)? formSubmitted,
    required TResult orElse(),
  }) {
    if (formSubmitted != null) {
      return formSubmitted(this);
    }
    return orElse();
  }
}

abstract class _FormSubmitted implements RegistrationEvent {
  const factory _FormSubmitted() = _$_FormSubmitted;
}

/// @nodoc
mixin _$RegistrationState {
  UsernameInput get username => throw _privateConstructorUsedError;
  bool get isCheckingUsername => throw _privateConstructorUsedError;
  Email get email => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  RegistrationStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegistrationStateCopyWith<RegistrationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationStateCopyWith<$Res> {
  factory $RegistrationStateCopyWith(
          RegistrationState value, $Res Function(RegistrationState) then) =
      _$RegistrationStateCopyWithImpl<$Res>;
  $Res call(
      {UsernameInput username,
      bool isCheckingUsername,
      Email email,
      Password password,
      RegistrationStatus status});
}

/// @nodoc
class _$RegistrationStateCopyWithImpl<$Res>
    implements $RegistrationStateCopyWith<$Res> {
  _$RegistrationStateCopyWithImpl(this._value, this._then);

  final RegistrationState _value;
  // ignore: unused_field
  final $Res Function(RegistrationState) _then;

  @override
  $Res call({
    Object? username = freezed,
    Object? isCheckingUsername = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as UsernameInput,
      isCheckingUsername: isCheckingUsername == freezed
          ? _value.isCheckingUsername
          : isCheckingUsername // ignore: cast_nullable_to_non_nullable
              as bool,
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
              as RegistrationStatus,
    ));
  }
}

/// @nodoc
abstract class _$$_RegistrationStateCopyWith<$Res>
    implements $RegistrationStateCopyWith<$Res> {
  factory _$$_RegistrationStateCopyWith(_$_RegistrationState value,
          $Res Function(_$_RegistrationState) then) =
      __$$_RegistrationStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {UsernameInput username,
      bool isCheckingUsername,
      Email email,
      Password password,
      RegistrationStatus status});
}

/// @nodoc
class __$$_RegistrationStateCopyWithImpl<$Res>
    extends _$RegistrationStateCopyWithImpl<$Res>
    implements _$$_RegistrationStateCopyWith<$Res> {
  __$$_RegistrationStateCopyWithImpl(
      _$_RegistrationState _value, $Res Function(_$_RegistrationState) _then)
      : super(_value, (v) => _then(v as _$_RegistrationState));

  @override
  _$_RegistrationState get _value => super._value as _$_RegistrationState;

  @override
  $Res call({
    Object? username = freezed,
    Object? isCheckingUsername = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_RegistrationState(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as UsernameInput,
      isCheckingUsername: isCheckingUsername == freezed
          ? _value.isCheckingUsername
          : isCheckingUsername // ignore: cast_nullable_to_non_nullable
              as bool,
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
              as RegistrationStatus,
    ));
  }
}

/// @nodoc

class _$_RegistrationState extends _RegistrationState {
  const _$_RegistrationState(
      {required this.username,
      required this.isCheckingUsername,
      required this.email,
      required this.password,
      required this.status})
      : super._();

  @override
  final UsernameInput username;
  @override
  final bool isCheckingUsername;
  @override
  final Email email;
  @override
  final Password password;
  @override
  final RegistrationStatus status;

  @override
  String toString() {
    return 'RegistrationState(username: $username, isCheckingUsername: $isCheckingUsername, email: $email, password: $password, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegistrationState &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality()
                .equals(other.isCheckingUsername, isCheckingUsername) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(isCheckingUsername),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$$_RegistrationStateCopyWith<_$_RegistrationState> get copyWith =>
      __$$_RegistrationStateCopyWithImpl<_$_RegistrationState>(
          this, _$identity);
}

abstract class _RegistrationState extends RegistrationState {
  const factory _RegistrationState(
      {required final UsernameInput username,
      required final bool isCheckingUsername,
      required final Email email,
      required final Password password,
      required final RegistrationStatus status}) = _$_RegistrationState;
  const _RegistrationState._() : super._();

  @override
  UsernameInput get username => throw _privateConstructorUsedError;
  @override
  bool get isCheckingUsername => throw _privateConstructorUsedError;
  @override
  Email get email => throw _privateConstructorUsedError;
  @override
  Password get password => throw _privateConstructorUsedError;
  @override
  RegistrationStatus get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_RegistrationStateCopyWith<_$_RegistrationState> get copyWith =>
      throw _privateConstructorUsedError;
}
