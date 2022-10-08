// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'internet_connectivity_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InternetConnectivityEvent {
  InternetConnectionStatus get status => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InternetConnectionStatus status)
        checkInternetConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(InternetConnectionStatus status)? checkInternetConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InternetConnectionStatus status)? checkInternetConnection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckInternetConnection value)
        checkInternetConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CheckInternetConnection value)? checkInternetConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckInternetConnection value)? checkInternetConnection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InternetConnectivityEventCopyWith<InternetConnectivityEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InternetConnectivityEventCopyWith<$Res> {
  factory $InternetConnectivityEventCopyWith(InternetConnectivityEvent value,
          $Res Function(InternetConnectivityEvent) then) =
      _$InternetConnectivityEventCopyWithImpl<$Res>;
  $Res call({InternetConnectionStatus status});
}

/// @nodoc
class _$InternetConnectivityEventCopyWithImpl<$Res>
    implements $InternetConnectivityEventCopyWith<$Res> {
  _$InternetConnectivityEventCopyWithImpl(this._value, this._then);

  final InternetConnectivityEvent _value;
  // ignore: unused_field
  final $Res Function(InternetConnectivityEvent) _then;

  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as InternetConnectionStatus,
    ));
  }
}

/// @nodoc
abstract class _$$_CheckInternetConnectionCopyWith<$Res>
    implements $InternetConnectivityEventCopyWith<$Res> {
  factory _$$_CheckInternetConnectionCopyWith(_$_CheckInternetConnection value,
          $Res Function(_$_CheckInternetConnection) then) =
      __$$_CheckInternetConnectionCopyWithImpl<$Res>;
  @override
  $Res call({InternetConnectionStatus status});
}

/// @nodoc
class __$$_CheckInternetConnectionCopyWithImpl<$Res>
    extends _$InternetConnectivityEventCopyWithImpl<$Res>
    implements _$$_CheckInternetConnectionCopyWith<$Res> {
  __$$_CheckInternetConnectionCopyWithImpl(_$_CheckInternetConnection _value,
      $Res Function(_$_CheckInternetConnection) _then)
      : super(_value, (v) => _then(v as _$_CheckInternetConnection));

  @override
  _$_CheckInternetConnection get _value =>
      super._value as _$_CheckInternetConnection;

  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(_$_CheckInternetConnection(
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as InternetConnectionStatus,
    ));
  }
}

/// @nodoc

class _$_CheckInternetConnection implements _CheckInternetConnection {
  const _$_CheckInternetConnection(this.status);

  @override
  final InternetConnectionStatus status;

  @override
  String toString() {
    return 'InternetConnectivityEvent.checkInternetConnection(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CheckInternetConnection &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$$_CheckInternetConnectionCopyWith<_$_CheckInternetConnection>
      get copyWith =>
          __$$_CheckInternetConnectionCopyWithImpl<_$_CheckInternetConnection>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InternetConnectionStatus status)
        checkInternetConnection,
  }) {
    return checkInternetConnection(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(InternetConnectionStatus status)? checkInternetConnection,
  }) {
    return checkInternetConnection?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InternetConnectionStatus status)? checkInternetConnection,
    required TResult orElse(),
  }) {
    if (checkInternetConnection != null) {
      return checkInternetConnection(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckInternetConnection value)
        checkInternetConnection,
  }) {
    return checkInternetConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_CheckInternetConnection value)? checkInternetConnection,
  }) {
    return checkInternetConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckInternetConnection value)? checkInternetConnection,
    required TResult orElse(),
  }) {
    if (checkInternetConnection != null) {
      return checkInternetConnection(this);
    }
    return orElse();
  }
}

abstract class _CheckInternetConnection implements InternetConnectivityEvent {
  const factory _CheckInternetConnection(
      final InternetConnectionStatus status) = _$_CheckInternetConnection;

  @override
  InternetConnectionStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$_CheckInternetConnectionCopyWith<_$_CheckInternetConnection>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$InternetConnectivityState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() activeConnection,
    required TResult Function() noConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? activeConnection,
    TResult Function()? noConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? activeConnection,
    TResult Function()? noConnection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActiveConnection value) activeConnection,
    required TResult Function(_NoConnection value) noConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActiveConnection value)? activeConnection,
    TResult Function(_NoConnection value)? noConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActiveConnection value)? activeConnection,
    TResult Function(_NoConnection value)? noConnection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InternetConnectivityStateCopyWith<$Res> {
  factory $InternetConnectivityStateCopyWith(InternetConnectivityState value,
          $Res Function(InternetConnectivityState) then) =
      _$InternetConnectivityStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InternetConnectivityStateCopyWithImpl<$Res>
    implements $InternetConnectivityStateCopyWith<$Res> {
  _$InternetConnectivityStateCopyWithImpl(this._value, this._then);

  final InternetConnectivityState _value;
  // ignore: unused_field
  final $Res Function(InternetConnectivityState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$InternetConnectivityStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'InternetConnectivityState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() activeConnection,
    required TResult Function() noConnection,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? activeConnection,
    TResult Function()? noConnection,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? activeConnection,
    TResult Function()? noConnection,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActiveConnection value) activeConnection,
    required TResult Function(_NoConnection value) noConnection,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActiveConnection value)? activeConnection,
    TResult Function(_NoConnection value)? noConnection,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActiveConnection value)? activeConnection,
    TResult Function(_NoConnection value)? noConnection,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements InternetConnectivityState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_ActiveConnectionCopyWith<$Res> {
  factory _$$_ActiveConnectionCopyWith(
          _$_ActiveConnection value, $Res Function(_$_ActiveConnection) then) =
      __$$_ActiveConnectionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ActiveConnectionCopyWithImpl<$Res>
    extends _$InternetConnectivityStateCopyWithImpl<$Res>
    implements _$$_ActiveConnectionCopyWith<$Res> {
  __$$_ActiveConnectionCopyWithImpl(
      _$_ActiveConnection _value, $Res Function(_$_ActiveConnection) _then)
      : super(_value, (v) => _then(v as _$_ActiveConnection));

  @override
  _$_ActiveConnection get _value => super._value as _$_ActiveConnection;
}

/// @nodoc

class _$_ActiveConnection implements _ActiveConnection {
  const _$_ActiveConnection();

  @override
  String toString() {
    return 'InternetConnectivityState.activeConnection()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ActiveConnection);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() activeConnection,
    required TResult Function() noConnection,
  }) {
    return activeConnection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? activeConnection,
    TResult Function()? noConnection,
  }) {
    return activeConnection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? activeConnection,
    TResult Function()? noConnection,
    required TResult orElse(),
  }) {
    if (activeConnection != null) {
      return activeConnection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActiveConnection value) activeConnection,
    required TResult Function(_NoConnection value) noConnection,
  }) {
    return activeConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActiveConnection value)? activeConnection,
    TResult Function(_NoConnection value)? noConnection,
  }) {
    return activeConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActiveConnection value)? activeConnection,
    TResult Function(_NoConnection value)? noConnection,
    required TResult orElse(),
  }) {
    if (activeConnection != null) {
      return activeConnection(this);
    }
    return orElse();
  }
}

abstract class _ActiveConnection implements InternetConnectivityState {
  const factory _ActiveConnection() = _$_ActiveConnection;
}

/// @nodoc
abstract class _$$_NoConnectionCopyWith<$Res> {
  factory _$$_NoConnectionCopyWith(
          _$_NoConnection value, $Res Function(_$_NoConnection) then) =
      __$$_NoConnectionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NoConnectionCopyWithImpl<$Res>
    extends _$InternetConnectivityStateCopyWithImpl<$Res>
    implements _$$_NoConnectionCopyWith<$Res> {
  __$$_NoConnectionCopyWithImpl(
      _$_NoConnection _value, $Res Function(_$_NoConnection) _then)
      : super(_value, (v) => _then(v as _$_NoConnection));

  @override
  _$_NoConnection get _value => super._value as _$_NoConnection;
}

/// @nodoc

class _$_NoConnection implements _NoConnection {
  const _$_NoConnection();

  @override
  String toString() {
    return 'InternetConnectivityState.noConnection()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NoConnection);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() activeConnection,
    required TResult Function() noConnection,
  }) {
    return noConnection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? activeConnection,
    TResult Function()? noConnection,
  }) {
    return noConnection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? activeConnection,
    TResult Function()? noConnection,
    required TResult orElse(),
  }) {
    if (noConnection != null) {
      return noConnection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActiveConnection value) activeConnection,
    required TResult Function(_NoConnection value) noConnection,
  }) {
    return noConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActiveConnection value)? activeConnection,
    TResult Function(_NoConnection value)? noConnection,
  }) {
    return noConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActiveConnection value)? activeConnection,
    TResult Function(_NoConnection value)? noConnection,
    required TResult orElse(),
  }) {
    if (noConnection != null) {
      return noConnection(this);
    }
    return orElse();
  }
}

abstract class _NoConnection implements InternetConnectivityState {
  const factory _NoConnection() = _$_NoConnection;
}
