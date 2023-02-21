// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'save_post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SavedPost _$SavedPostFromJson(Map<String, dynamic> json) {
  return _SavedPost.fromJson(json);
}

/// @nodoc
mixin _$SavedPost {
  String? get id => throw _privateConstructorUsedError;
  String get savedOwner => throw _privateConstructorUsedError;
  String? get postid => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SavedPostCopyWith<SavedPost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavedPostCopyWith<$Res> {
  factory $SavedPostCopyWith(SavedPost value, $Res Function(SavedPost) then) =
      _$SavedPostCopyWithImpl<$Res, SavedPost>;
  @useResult
  $Res call({String? id, String savedOwner, String? postid, DateTime date});
}

/// @nodoc
class _$SavedPostCopyWithImpl<$Res, $Val extends SavedPost>
    implements $SavedPostCopyWith<$Res> {
  _$SavedPostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? savedOwner = null,
    Object? postid = freezed,
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      savedOwner: null == savedOwner
          ? _value.savedOwner
          : savedOwner // ignore: cast_nullable_to_non_nullable
              as String,
      postid: freezed == postid
          ? _value.postid
          : postid // ignore: cast_nullable_to_non_nullable
              as String?,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SavedPostCopyWith<$Res> implements $SavedPostCopyWith<$Res> {
  factory _$$_SavedPostCopyWith(
          _$_SavedPost value, $Res Function(_$_SavedPost) then) =
      __$$_SavedPostCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String savedOwner, String? postid, DateTime date});
}

/// @nodoc
class __$$_SavedPostCopyWithImpl<$Res>
    extends _$SavedPostCopyWithImpl<$Res, _$_SavedPost>
    implements _$$_SavedPostCopyWith<$Res> {
  __$$_SavedPostCopyWithImpl(
      _$_SavedPost _value, $Res Function(_$_SavedPost) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? savedOwner = null,
    Object? postid = freezed,
    Object? date = null,
  }) {
    return _then(_$_SavedPost(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      savedOwner: null == savedOwner
          ? _value.savedOwner
          : savedOwner // ignore: cast_nullable_to_non_nullable
              as String,
      postid: freezed == postid
          ? _value.postid
          : postid // ignore: cast_nullable_to_non_nullable
              as String?,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SavedPost extends _SavedPost {
  const _$_SavedPost(
      {this.id, required this.savedOwner, this.postid, required this.date})
      : super._();

  factory _$_SavedPost.fromJson(Map<String, dynamic> json) =>
      _$$_SavedPostFromJson(json);

  @override
  final String? id;
  @override
  final String savedOwner;
  @override
  final String? postid;
  @override
  final DateTime date;

  @override
  String toString() {
    return 'SavedPost(id: $id, savedOwner: $savedOwner, postid: $postid, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SavedPost &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.savedOwner, savedOwner) ||
                other.savedOwner == savedOwner) &&
            (identical(other.postid, postid) || other.postid == postid) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, savedOwner, postid, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SavedPostCopyWith<_$_SavedPost> get copyWith =>
      __$$_SavedPostCopyWithImpl<_$_SavedPost>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SavedPostToJson(
      this,
    );
  }
}

abstract class _SavedPost extends SavedPost {
  const factory _SavedPost(
      {final String? id,
      required final String savedOwner,
      final String? postid,
      required final DateTime date}) = _$_SavedPost;
  const _SavedPost._() : super._();

  factory _SavedPost.fromJson(Map<String, dynamic> json) =
      _$_SavedPost.fromJson;

  @override
  String? get id;
  @override
  String get savedOwner;
  @override
  String? get postid;
  @override
  DateTime get date;
  @override
  @JsonKey(ignore: true)
  _$$_SavedPostCopyWith<_$_SavedPost> get copyWith =>
      throw _privateConstructorUsedError;
}
