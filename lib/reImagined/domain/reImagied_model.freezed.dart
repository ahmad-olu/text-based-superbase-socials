// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'reImagied_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReImagined _$ReImaginedFromJson(Map<String, dynamic> json) {
  return _ReImagined.fromJson(json);
}

/// @nodoc
mixin _$ReImagined {
  String? get id => throw _privateConstructorUsedError;
  String get postId => throw _privateConstructorUsedError;
  @JsonKey(toJson: fireStoreUserToJson)
  dynamic get author => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  int get likes => throw _privateConstructorUsedError;
  @JsonKey(
      toJson: fireStoreTimestampToJson, fromJson: fireStoreTimestampFromJson)
  dynamic get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReImaginedCopyWith<ReImagined> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReImaginedCopyWith<$Res> {
  factory $ReImaginedCopyWith(
          ReImagined value, $Res Function(ReImagined) then) =
      _$ReImaginedCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String postId,
      @JsonKey(toJson: fireStoreUserToJson)
          dynamic author,
      String content,
      int likes,
      @JsonKey(toJson: fireStoreTimestampToJson, fromJson: fireStoreTimestampFromJson)
          dynamic date});
}

/// @nodoc
class _$ReImaginedCopyWithImpl<$Res> implements $ReImaginedCopyWith<$Res> {
  _$ReImaginedCopyWithImpl(this._value, this._then);

  final ReImagined _value;
  // ignore: unused_field
  final $Res Function(ReImagined) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? postId = freezed,
    Object? author = freezed,
    Object? content = freezed,
    Object? likes = freezed,
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      postId: postId == freezed
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as dynamic,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      likes: likes == freezed
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$$_ReImaginedCopyWith<$Res>
    implements $ReImaginedCopyWith<$Res> {
  factory _$$_ReImaginedCopyWith(
          _$_ReImagined value, $Res Function(_$_ReImagined) then) =
      __$$_ReImaginedCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String postId,
      @JsonKey(toJson: fireStoreUserToJson)
          dynamic author,
      String content,
      int likes,
      @JsonKey(toJson: fireStoreTimestampToJson, fromJson: fireStoreTimestampFromJson)
          dynamic date});
}

/// @nodoc
class __$$_ReImaginedCopyWithImpl<$Res> extends _$ReImaginedCopyWithImpl<$Res>
    implements _$$_ReImaginedCopyWith<$Res> {
  __$$_ReImaginedCopyWithImpl(
      _$_ReImagined _value, $Res Function(_$_ReImagined) _then)
      : super(_value, (v) => _then(v as _$_ReImagined));

  @override
  _$_ReImagined get _value => super._value as _$_ReImagined;

  @override
  $Res call({
    Object? id = freezed,
    Object? postId = freezed,
    Object? author = freezed,
    Object? content = freezed,
    Object? likes = freezed,
    Object? date = freezed,
  }) {
    return _then(_$_ReImagined(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      postId: postId == freezed
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as dynamic,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      likes: likes == freezed
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReImagined extends _ReImagined {
  const _$_ReImagined(
      {this.id,
      required this.postId,
      @JsonKey(toJson: fireStoreUserToJson)
          required this.author,
      required this.content,
      required this.likes,
      @JsonKey(toJson: fireStoreTimestampToJson, fromJson: fireStoreTimestampFromJson)
          required this.date})
      : super._();

  factory _$_ReImagined.fromJson(Map<String, dynamic> json) =>
      _$$_ReImaginedFromJson(json);

  @override
  final String? id;
  @override
  final String postId;
  @override
  @JsonKey(toJson: fireStoreUserToJson)
  final dynamic author;
  @override
  final String content;
  @override
  final int likes;
  @override
  @JsonKey(
      toJson: fireStoreTimestampToJson, fromJson: fireStoreTimestampFromJson)
  final dynamic date;

  @override
  String toString() {
    return 'ReImagined(id: $id, postId: $postId, author: $author, content: $content, likes: $likes, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReImagined &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.postId, postId) &&
            const DeepCollectionEquality().equals(other.author, author) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality().equals(other.likes, likes) &&
            const DeepCollectionEquality().equals(other.date, date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(postId),
      const DeepCollectionEquality().hash(author),
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(likes),
      const DeepCollectionEquality().hash(date));

  @JsonKey(ignore: true)
  @override
  _$$_ReImaginedCopyWith<_$_ReImagined> get copyWith =>
      __$$_ReImaginedCopyWithImpl<_$_ReImagined>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReImaginedToJson(
      this,
    );
  }
}

abstract class _ReImagined extends ReImagined {
  const factory _ReImagined(
      {final String? id,
      required final String postId,
      @JsonKey(toJson: fireStoreUserToJson)
          required final dynamic author,
      required final String content,
      required final int likes,
      @JsonKey(toJson: fireStoreTimestampToJson, fromJson: fireStoreTimestampFromJson)
          required final dynamic date}) = _$_ReImagined;
  const _ReImagined._() : super._();

  factory _ReImagined.fromJson(Map<String, dynamic> json) =
      _$_ReImagined.fromJson;

  @override
  String? get id;
  @override
  String get postId;
  @override
  @JsonKey(toJson: fireStoreUserToJson)
  dynamic get author;
  @override
  String get content;
  @override
  int get likes;
  @override
  @JsonKey(
      toJson: fireStoreTimestampToJson, fromJson: fireStoreTimestampFromJson)
  dynamic get date;
  @override
  @JsonKey(ignore: true)
  _$$_ReImaginedCopyWith<_$_ReImagined> get copyWith =>
      throw _privateConstructorUsedError;
}
