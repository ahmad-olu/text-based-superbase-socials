// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Notification _$NotificationFromJson(Map<String, dynamic> json) {
  return _Notification.fromJson(json);
}

/// @nodoc
mixin _$Notification {
  @JsonKey(name: 'owner_id')
  String get ownerID => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  @JsonKey(name: 'notification_type')
  String get notificationType => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationCopyWith<Notification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationCopyWith<$Res> {
  factory $NotificationCopyWith(
          Notification value, $Res Function(Notification) then) =
      _$NotificationCopyWithImpl<$Res, Notification>;
  @useResult
  $Res call(
      {@JsonKey(name: 'owner_id') String ownerID,
      String id,
      String author,
      @JsonKey(name: 'notification_type') String notificationType,
      @JsonKey(name: 'created_at') DateTime date});
}

/// @nodoc
class _$NotificationCopyWithImpl<$Res, $Val extends Notification>
    implements $NotificationCopyWith<$Res> {
  _$NotificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ownerID = null,
    Object? id = null,
    Object? author = null,
    Object? notificationType = null,
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      ownerID: null == ownerID
          ? _value.ownerID
          : ownerID // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      notificationType: null == notificationType
          ? _value.notificationType
          : notificationType // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NotificationCopyWith<$Res>
    implements $NotificationCopyWith<$Res> {
  factory _$$_NotificationCopyWith(
          _$_Notification value, $Res Function(_$_Notification) then) =
      __$$_NotificationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'owner_id') String ownerID,
      String id,
      String author,
      @JsonKey(name: 'notification_type') String notificationType,
      @JsonKey(name: 'created_at') DateTime date});
}

/// @nodoc
class __$$_NotificationCopyWithImpl<$Res>
    extends _$NotificationCopyWithImpl<$Res, _$_Notification>
    implements _$$_NotificationCopyWith<$Res> {
  __$$_NotificationCopyWithImpl(
      _$_Notification _value, $Res Function(_$_Notification) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ownerID = null,
    Object? id = null,
    Object? author = null,
    Object? notificationType = null,
    Object? date = null,
  }) {
    return _then(_$_Notification(
      ownerID: null == ownerID
          ? _value.ownerID
          : ownerID // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      notificationType: null == notificationType
          ? _value.notificationType
          : notificationType // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Notification implements _Notification {
  const _$_Notification(
      {@JsonKey(name: 'owner_id') required this.ownerID,
      required this.id,
      required this.author,
      @JsonKey(name: 'notification_type') required this.notificationType,
      @JsonKey(name: 'created_at') required this.date});

  factory _$_Notification.fromJson(Map<String, dynamic> json) =>
      _$$_NotificationFromJson(json);

  @override
  @JsonKey(name: 'owner_id')
  final String ownerID;
  @override
  final String id;
  @override
  final String author;
  @override
  @JsonKey(name: 'notification_type')
  final String notificationType;
  @override
  @JsonKey(name: 'created_at')
  final DateTime date;

  @override
  String toString() {
    return 'Notification(ownerID: $ownerID, id: $id, author: $author, notificationType: $notificationType, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Notification &&
            (identical(other.ownerID, ownerID) || other.ownerID == ownerID) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.notificationType, notificationType) ||
                other.notificationType == notificationType) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, ownerID, id, author, notificationType, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NotificationCopyWith<_$_Notification> get copyWith =>
      __$$_NotificationCopyWithImpl<_$_Notification>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NotificationToJson(
      this,
    );
  }
}

abstract class _Notification implements Notification {
  const factory _Notification(
      {@JsonKey(name: 'owner_id')
          required final String ownerID,
      required final String id,
      required final String author,
      @JsonKey(name: 'notification_type')
          required final String notificationType,
      @JsonKey(name: 'created_at')
          required final DateTime date}) = _$_Notification;

  factory _Notification.fromJson(Map<String, dynamic> json) =
      _$_Notification.fromJson;

  @override
  @JsonKey(name: 'owner_id')
  String get ownerID;
  @override
  String get id;
  @override
  String get author;
  @override
  @JsonKey(name: 'notification_type')
  String get notificationType;
  @override
  @JsonKey(name: 'created_at')
  DateTime get date;
  @override
  @JsonKey(ignore: true)
  _$$_NotificationCopyWith<_$_Notification> get copyWith =>
      throw _privateConstructorUsedError;
}
