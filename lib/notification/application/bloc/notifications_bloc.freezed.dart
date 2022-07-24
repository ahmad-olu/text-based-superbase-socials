// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'notifications_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NotificationsEvent {
  List<Notif> get notifications => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Notif> notifications) updatedNotifications,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Notif> notifications)? updatedNotifications,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Notif> notifications)? updatedNotifications,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdatedNotifications value) updatedNotifications,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UpdatedNotifications value)? updatedNotifications,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdatedNotifications value)? updatedNotifications,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NotificationsEventCopyWith<NotificationsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationsEventCopyWith<$Res> {
  factory $NotificationsEventCopyWith(
          NotificationsEvent value, $Res Function(NotificationsEvent) then) =
      _$NotificationsEventCopyWithImpl<$Res>;
  $Res call({List<Notif> notifications});
}

/// @nodoc
class _$NotificationsEventCopyWithImpl<$Res>
    implements $NotificationsEventCopyWith<$Res> {
  _$NotificationsEventCopyWithImpl(this._value, this._then);

  final NotificationsEvent _value;
  // ignore: unused_field
  final $Res Function(NotificationsEvent) _then;

  @override
  $Res call({
    Object? notifications = freezed,
  }) {
    return _then(_value.copyWith(
      notifications: notifications == freezed
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<Notif>,
    ));
  }
}

/// @nodoc
abstract class _$$_UpdatedNotificationsCopyWith<$Res>
    implements $NotificationsEventCopyWith<$Res> {
  factory _$$_UpdatedNotificationsCopyWith(_$_UpdatedNotifications value,
          $Res Function(_$_UpdatedNotifications) then) =
      __$$_UpdatedNotificationsCopyWithImpl<$Res>;
  @override
  $Res call({List<Notif> notifications});
}

/// @nodoc
class __$$_UpdatedNotificationsCopyWithImpl<$Res>
    extends _$NotificationsEventCopyWithImpl<$Res>
    implements _$$_UpdatedNotificationsCopyWith<$Res> {
  __$$_UpdatedNotificationsCopyWithImpl(_$_UpdatedNotifications _value,
      $Res Function(_$_UpdatedNotifications) _then)
      : super(_value, (v) => _then(v as _$_UpdatedNotifications));

  @override
  _$_UpdatedNotifications get _value => super._value as _$_UpdatedNotifications;

  @override
  $Res call({
    Object? notifications = freezed,
  }) {
    return _then(_$_UpdatedNotifications(
      notifications: notifications == freezed
          ? _value._notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<Notif>,
    ));
  }
}

/// @nodoc

class _$_UpdatedNotifications implements _UpdatedNotifications {
  const _$_UpdatedNotifications({required final List<Notif> notifications})
      : _notifications = notifications;

  final List<Notif> _notifications;
  @override
  List<Notif> get notifications {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notifications);
  }

  @override
  String toString() {
    return 'NotificationsEvent.updatedNotifications(notifications: $notifications)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdatedNotifications &&
            const DeepCollectionEquality()
                .equals(other._notifications, _notifications));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_notifications));

  @JsonKey(ignore: true)
  @override
  _$$_UpdatedNotificationsCopyWith<_$_UpdatedNotifications> get copyWith =>
      __$$_UpdatedNotificationsCopyWithImpl<_$_UpdatedNotifications>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Notif> notifications) updatedNotifications,
  }) {
    return updatedNotifications(notifications);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(List<Notif> notifications)? updatedNotifications,
  }) {
    return updatedNotifications?.call(notifications);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Notif> notifications)? updatedNotifications,
    required TResult orElse(),
  }) {
    if (updatedNotifications != null) {
      return updatedNotifications(notifications);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdatedNotifications value) updatedNotifications,
  }) {
    return updatedNotifications(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UpdatedNotifications value)? updatedNotifications,
  }) {
    return updatedNotifications?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdatedNotifications value)? updatedNotifications,
    required TResult orElse(),
  }) {
    if (updatedNotifications != null) {
      return updatedNotifications(this);
    }
    return orElse();
  }
}

abstract class _UpdatedNotifications implements NotificationsEvent {
  const factory _UpdatedNotifications(
      {required final List<Notif> notifications}) = _$_UpdatedNotifications;

  @override
  List<Notif> get notifications => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_UpdatedNotificationsCopyWith<_$_UpdatedNotifications> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NotificationsState {
  List<Notif> get notifications => throw _privateConstructorUsedError;
  NotificationsStatus get status => throw _privateConstructorUsedError;
  GeatFailure get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NotificationsStateCopyWith<NotificationsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationsStateCopyWith<$Res> {
  factory $NotificationsStateCopyWith(
          NotificationsState value, $Res Function(NotificationsState) then) =
      _$NotificationsStateCopyWithImpl<$Res>;
  $Res call(
      {List<Notif> notifications,
      NotificationsStatus status,
      GeatFailure failure});

  $GeatFailureCopyWith<$Res> get failure;
}

/// @nodoc
class _$NotificationsStateCopyWithImpl<$Res>
    implements $NotificationsStateCopyWith<$Res> {
  _$NotificationsStateCopyWithImpl(this._value, this._then);

  final NotificationsState _value;
  // ignore: unused_field
  final $Res Function(NotificationsState) _then;

  @override
  $Res call({
    Object? notifications = freezed,
    Object? status = freezed,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      notifications: notifications == freezed
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<Notif>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as NotificationsStatus,
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
abstract class _$$_NotificationsStateCopyWith<$Res>
    implements $NotificationsStateCopyWith<$Res> {
  factory _$$_NotificationsStateCopyWith(_$_NotificationsState value,
          $Res Function(_$_NotificationsState) then) =
      __$$_NotificationsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Notif> notifications,
      NotificationsStatus status,
      GeatFailure failure});

  @override
  $GeatFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_NotificationsStateCopyWithImpl<$Res>
    extends _$NotificationsStateCopyWithImpl<$Res>
    implements _$$_NotificationsStateCopyWith<$Res> {
  __$$_NotificationsStateCopyWithImpl(
      _$_NotificationsState _value, $Res Function(_$_NotificationsState) _then)
      : super(_value, (v) => _then(v as _$_NotificationsState));

  @override
  _$_NotificationsState get _value => super._value as _$_NotificationsState;

  @override
  $Res call({
    Object? notifications = freezed,
    Object? status = freezed,
    Object? failure = freezed,
  }) {
    return _then(_$_NotificationsState(
      notifications: notifications == freezed
          ? _value._notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<Notif>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as NotificationsStatus,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as GeatFailure,
    ));
  }
}

/// @nodoc

class _$_NotificationsState implements _NotificationsState {
  const _$_NotificationsState(
      {required final List<Notif> notifications,
      required this.status,
      required this.failure})
      : _notifications = notifications;

  final List<Notif> _notifications;
  @override
  List<Notif> get notifications {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notifications);
  }

  @override
  final NotificationsStatus status;
  @override
  final GeatFailure failure;

  @override
  String toString() {
    return 'NotificationsState(notifications: $notifications, status: $status, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotificationsState &&
            const DeepCollectionEquality()
                .equals(other._notifications, _notifications) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_notifications),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$$_NotificationsStateCopyWith<_$_NotificationsState> get copyWith =>
      __$$_NotificationsStateCopyWithImpl<_$_NotificationsState>(
          this, _$identity);
}

abstract class _NotificationsState implements NotificationsState {
  const factory _NotificationsState(
      {required final List<Notif> notifications,
      required final NotificationsStatus status,
      required final GeatFailure failure}) = _$_NotificationsState;

  @override
  List<Notif> get notifications => throw _privateConstructorUsedError;
  @override
  NotificationsStatus get status => throw _privateConstructorUsedError;
  @override
  GeatFailure get failure => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_NotificationsStateCopyWith<_$_NotificationsState> get copyWith =>
      throw _privateConstructorUsedError;
}
