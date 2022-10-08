// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'username_check_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UsernameCheckEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) userChanged,
    required TResult Function() submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String username)? userChanged,
    TResult Function()? submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username)? userChanged,
    TResult Function()? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserChanged value) userChanged,
    required TResult Function(_Submit value) submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UserChanged value)? userChanged,
    TResult Function(_Submit value)? submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserChanged value)? userChanged,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsernameCheckEventCopyWith<$Res> {
  factory $UsernameCheckEventCopyWith(
          UsernameCheckEvent value, $Res Function(UsernameCheckEvent) then) =
      _$UsernameCheckEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UsernameCheckEventCopyWithImpl<$Res>
    implements $UsernameCheckEventCopyWith<$Res> {
  _$UsernameCheckEventCopyWithImpl(this._value, this._then);

  final UsernameCheckEvent _value;
  // ignore: unused_field
  final $Res Function(UsernameCheckEvent) _then;
}

/// @nodoc
abstract class _$$_UserChangedCopyWith<$Res> {
  factory _$$_UserChangedCopyWith(
          _$_UserChanged value, $Res Function(_$_UserChanged) then) =
      __$$_UserChangedCopyWithImpl<$Res>;
  $Res call({String username});
}

/// @nodoc
class __$$_UserChangedCopyWithImpl<$Res>
    extends _$UsernameCheckEventCopyWithImpl<$Res>
    implements _$$_UserChangedCopyWith<$Res> {
  __$$_UserChangedCopyWithImpl(
      _$_UserChanged _value, $Res Function(_$_UserChanged) _then)
      : super(_value, (v) => _then(v as _$_UserChanged));

  @override
  _$_UserChanged get _value => super._value as _$_UserChanged;

  @override
  $Res call({
    Object? username = freezed,
  }) {
    return _then(_$_UserChanged(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UserChanged implements _UserChanged {
  const _$_UserChanged({required this.username});

  @override
  final String username;

  @override
  String toString() {
    return 'UsernameCheckEvent.userChanged(username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserChanged &&
            const DeepCollectionEquality().equals(other.username, username));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(username));

  @JsonKey(ignore: true)
  @override
  _$$_UserChangedCopyWith<_$_UserChanged> get copyWith =>
      __$$_UserChangedCopyWithImpl<_$_UserChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) userChanged,
    required TResult Function() submit,
  }) {
    return userChanged(username);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String username)? userChanged,
    TResult Function()? submit,
  }) {
    return userChanged?.call(username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username)? userChanged,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (userChanged != null) {
      return userChanged(username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserChanged value) userChanged,
    required TResult Function(_Submit value) submit,
  }) {
    return userChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UserChanged value)? userChanged,
    TResult Function(_Submit value)? submit,
  }) {
    return userChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserChanged value)? userChanged,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (userChanged != null) {
      return userChanged(this);
    }
    return orElse();
  }
}

abstract class _UserChanged implements UsernameCheckEvent {
  const factory _UserChanged({required final String username}) = _$_UserChanged;

  String get username;
  @JsonKey(ignore: true)
  _$$_UserChangedCopyWith<_$_UserChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SubmitCopyWith<$Res> {
  factory _$$_SubmitCopyWith(_$_Submit value, $Res Function(_$_Submit) then) =
      __$$_SubmitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SubmitCopyWithImpl<$Res>
    extends _$UsernameCheckEventCopyWithImpl<$Res>
    implements _$$_SubmitCopyWith<$Res> {
  __$$_SubmitCopyWithImpl(_$_Submit _value, $Res Function(_$_Submit) _then)
      : super(_value, (v) => _then(v as _$_Submit));

  @override
  _$_Submit get _value => super._value as _$_Submit;
}

/// @nodoc

class _$_Submit implements _Submit {
  const _$_Submit();

  @override
  String toString() {
    return 'UsernameCheckEvent.submit()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Submit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String username) userChanged,
    required TResult Function() submit,
  }) {
    return submit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String username)? userChanged,
    TResult Function()? submit,
  }) {
    return submit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String username)? userChanged,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserChanged value) userChanged,
    required TResult Function(_Submit value) submit,
  }) {
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UserChanged value)? userChanged,
    TResult Function(_Submit value)? submit,
  }) {
    return submit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserChanged value)? userChanged,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class _Submit implements UsernameCheckEvent {
  const factory _Submit() = _$_Submit;
}

/// @nodoc
mixin _$UsernameCheckState {
  UsernameInput get username => throw _privateConstructorUsedError;
  bool get isCheckingUsername => throw _privateConstructorUsedError;
  UsernameCheckStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UsernameCheckStateCopyWith<UsernameCheckState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsernameCheckStateCopyWith<$Res> {
  factory $UsernameCheckStateCopyWith(
          UsernameCheckState value, $Res Function(UsernameCheckState) then) =
      _$UsernameCheckStateCopyWithImpl<$Res>;
  $Res call(
      {UsernameInput username,
      bool isCheckingUsername,
      UsernameCheckStatus status});
}

/// @nodoc
class _$UsernameCheckStateCopyWithImpl<$Res>
    implements $UsernameCheckStateCopyWith<$Res> {
  _$UsernameCheckStateCopyWithImpl(this._value, this._then);

  final UsernameCheckState _value;
  // ignore: unused_field
  final $Res Function(UsernameCheckState) _then;

  @override
  $Res call({
    Object? username = freezed,
    Object? isCheckingUsername = freezed,
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
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UsernameCheckStatus,
    ));
  }
}

/// @nodoc
abstract class _$$_UsernameCheckStateCopyWith<$Res>
    implements $UsernameCheckStateCopyWith<$Res> {
  factory _$$_UsernameCheckStateCopyWith(_$_UsernameCheckState value,
          $Res Function(_$_UsernameCheckState) then) =
      __$$_UsernameCheckStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {UsernameInput username,
      bool isCheckingUsername,
      UsernameCheckStatus status});
}

/// @nodoc
class __$$_UsernameCheckStateCopyWithImpl<$Res>
    extends _$UsernameCheckStateCopyWithImpl<$Res>
    implements _$$_UsernameCheckStateCopyWith<$Res> {
  __$$_UsernameCheckStateCopyWithImpl(
      _$_UsernameCheckState _value, $Res Function(_$_UsernameCheckState) _then)
      : super(_value, (v) => _then(v as _$_UsernameCheckState));

  @override
  _$_UsernameCheckState get _value => super._value as _$_UsernameCheckState;

  @override
  $Res call({
    Object? username = freezed,
    Object? isCheckingUsername = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_UsernameCheckState(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as UsernameInput,
      isCheckingUsername: isCheckingUsername == freezed
          ? _value.isCheckingUsername
          : isCheckingUsername // ignore: cast_nullable_to_non_nullable
              as bool,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UsernameCheckStatus,
    ));
  }
}

/// @nodoc

class _$_UsernameCheckState implements _UsernameCheckState {
  const _$_UsernameCheckState(
      {required this.username,
      required this.isCheckingUsername,
      required this.status});

  @override
  final UsernameInput username;
  @override
  final bool isCheckingUsername;
  @override
  final UsernameCheckStatus status;

  @override
  String toString() {
    return 'UsernameCheckState(username: $username, isCheckingUsername: $isCheckingUsername, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UsernameCheckState &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality()
                .equals(other.isCheckingUsername, isCheckingUsername) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(isCheckingUsername),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$$_UsernameCheckStateCopyWith<_$_UsernameCheckState> get copyWith =>
      __$$_UsernameCheckStateCopyWithImpl<_$_UsernameCheckState>(
          this, _$identity);
}

abstract class _UsernameCheckState implements UsernameCheckState {
  const factory _UsernameCheckState(
      {required final UsernameInput username,
      required final bool isCheckingUsername,
      required final UsernameCheckStatus status}) = _$_UsernameCheckState;

  @override
  UsernameInput get username;
  @override
  bool get isCheckingUsername;
  @override
  UsernameCheckStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$_UsernameCheckStateCopyWith<_$_UsernameCheckState> get copyWith =>
      throw _privateConstructorUsedError;
}
