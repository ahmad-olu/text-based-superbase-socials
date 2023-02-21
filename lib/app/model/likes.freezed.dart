// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'likes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Likes _$LikesFromJson(Map<String, dynamic> json) {
  return _Likes.fromJson(json);
}

/// @nodoc
mixin _$Likes {
  String? get id => throw _privateConstructorUsedError;
  String get postId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LikesCopyWith<Likes> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LikesCopyWith<$Res> {
  factory $LikesCopyWith(Likes value, $Res Function(Likes) then) =
      _$LikesCopyWithImpl<$Res, Likes>;
  @useResult
  $Res call(
      {String? id, String postId, @JsonKey(name: 'created_at') DateTime? date});
}

/// @nodoc
class _$LikesCopyWithImpl<$Res, $Val extends Likes>
    implements $LikesCopyWith<$Res> {
  _$LikesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? postId = null,
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LikesCopyWith<$Res> implements $LikesCopyWith<$Res> {
  factory _$$_LikesCopyWith(_$_Likes value, $Res Function(_$_Likes) then) =
      __$$_LikesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id, String postId, @JsonKey(name: 'created_at') DateTime? date});
}

/// @nodoc
class __$$_LikesCopyWithImpl<$Res> extends _$LikesCopyWithImpl<$Res, _$_Likes>
    implements _$$_LikesCopyWith<$Res> {
  __$$_LikesCopyWithImpl(_$_Likes _value, $Res Function(_$_Likes) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? postId = null,
    Object? date = freezed,
  }) {
    return _then(_$_Likes(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Likes implements _Likes {
  const _$_Likes(
      {this.id, required this.postId, @JsonKey(name: 'created_at') this.date});

  factory _$_Likes.fromJson(Map<String, dynamic> json) =>
      _$$_LikesFromJson(json);

  @override
  final String? id;
  @override
  final String postId;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? date;

  @override
  String toString() {
    return 'Likes(id: $id, postId: $postId, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Likes &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, postId, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LikesCopyWith<_$_Likes> get copyWith =>
      __$$_LikesCopyWithImpl<_$_Likes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LikesToJson(
      this,
    );
  }
}

abstract class _Likes implements Likes {
  const factory _Likes(
      {final String? id,
      required final String postId,
      @JsonKey(name: 'created_at') final DateTime? date}) = _$_Likes;

  factory _Likes.fromJson(Map<String, dynamic> json) = _$_Likes.fromJson;

  @override
  String? get id;
  @override
  String get postId;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get date;
  @override
  @JsonKey(ignore: true)
  _$$_LikesCopyWith<_$_Likes> get copyWith =>
      throw _privateConstructorUsedError;
}
