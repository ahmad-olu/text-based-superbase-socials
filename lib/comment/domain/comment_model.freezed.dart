// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'comment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Comment _$CommentFromJson(Map<String, dynamic> json) {
  return _Comment.fromJson(json);
}

/// @nodoc
mixin _$Comment {
  String? get id => throw _privateConstructorUsedError;
  String get postId => throw _privateConstructorUsedError;
  @JsonKey(toJson: fireStoreUserToJson)
  dynamic get author => throw _privateConstructorUsedError;
  PostType get postType => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  @JsonKey(
      toJson: fireStoreTimestampToJson, fromJson: fireStoreTimestampFromJson)
  dynamic get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentCopyWith<Comment> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentCopyWith<$Res> {
  factory $CommentCopyWith(Comment value, $Res Function(Comment) then) =
      _$CommentCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String postId,
      @JsonKey(toJson: fireStoreUserToJson)
          dynamic author,
      PostType postType,
      String content,
      @JsonKey(toJson: fireStoreTimestampToJson, fromJson: fireStoreTimestampFromJson)
          dynamic date});
}

/// @nodoc
class _$CommentCopyWithImpl<$Res> implements $CommentCopyWith<$Res> {
  _$CommentCopyWithImpl(this._value, this._then);

  final Comment _value;
  // ignore: unused_field
  final $Res Function(Comment) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? postId = freezed,
    Object? author = freezed,
    Object? postType = freezed,
    Object? content = freezed,
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
      postType: postType == freezed
          ? _value.postType
          : postType // ignore: cast_nullable_to_non_nullable
              as PostType,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$$_CommentCopyWith<$Res> implements $CommentCopyWith<$Res> {
  factory _$$_CommentCopyWith(
          _$_Comment value, $Res Function(_$_Comment) then) =
      __$$_CommentCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String postId,
      @JsonKey(toJson: fireStoreUserToJson)
          dynamic author,
      PostType postType,
      String content,
      @JsonKey(toJson: fireStoreTimestampToJson, fromJson: fireStoreTimestampFromJson)
          dynamic date});
}

/// @nodoc
class __$$_CommentCopyWithImpl<$Res> extends _$CommentCopyWithImpl<$Res>
    implements _$$_CommentCopyWith<$Res> {
  __$$_CommentCopyWithImpl(_$_Comment _value, $Res Function(_$_Comment) _then)
      : super(_value, (v) => _then(v as _$_Comment));

  @override
  _$_Comment get _value => super._value as _$_Comment;

  @override
  $Res call({
    Object? id = freezed,
    Object? postId = freezed,
    Object? author = freezed,
    Object? postType = freezed,
    Object? content = freezed,
    Object? date = freezed,
  }) {
    return _then(_$_Comment(
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
      postType: postType == freezed
          ? _value.postType
          : postType // ignore: cast_nullable_to_non_nullable
              as PostType,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Comment extends _Comment {
  const _$_Comment(
      {this.id,
      required this.postId,
      @JsonKey(toJson: fireStoreUserToJson)
          required this.author,
      required this.postType,
      required this.content,
      @JsonKey(toJson: fireStoreTimestampToJson, fromJson: fireStoreTimestampFromJson)
          required this.date})
      : super._();

  factory _$_Comment.fromJson(Map<String, dynamic> json) =>
      _$$_CommentFromJson(json);

  @override
  final String? id;
  @override
  final String postId;
  @override
  @JsonKey(toJson: fireStoreUserToJson)
  final dynamic author;
  @override
  final PostType postType;
  @override
  final String content;
  @override
  @JsonKey(
      toJson: fireStoreTimestampToJson, fromJson: fireStoreTimestampFromJson)
  final dynamic date;

  @override
  String toString() {
    return 'Comment(id: $id, postId: $postId, author: $author, postType: $postType, content: $content, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Comment &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.postId, postId) &&
            const DeepCollectionEquality().equals(other.author, author) &&
            const DeepCollectionEquality().equals(other.postType, postType) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality().equals(other.date, date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(postId),
      const DeepCollectionEquality().hash(author),
      const DeepCollectionEquality().hash(postType),
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(date));

  @JsonKey(ignore: true)
  @override
  _$$_CommentCopyWith<_$_Comment> get copyWith =>
      __$$_CommentCopyWithImpl<_$_Comment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommentToJson(
      this,
    );
  }
}

abstract class _Comment extends Comment {
  const factory _Comment(
      {final String? id,
      required final String postId,
      @JsonKey(toJson: fireStoreUserToJson)
          required final dynamic author,
      required final PostType postType,
      required final String content,
      @JsonKey(toJson: fireStoreTimestampToJson, fromJson: fireStoreTimestampFromJson)
          required final dynamic date}) = _$_Comment;
  const _Comment._() : super._();

  factory _Comment.fromJson(Map<String, dynamic> json) = _$_Comment.fromJson;

  @override
  String? get id;
  @override
  String get postId;
  @override
  @JsonKey(toJson: fireStoreUserToJson)
  dynamic get author;
  @override
  PostType get postType;
  @override
  String get content;
  @override
  @JsonKey(
      toJson: fireStoreTimestampToJson, fromJson: fireStoreTimestampFromJson)
  dynamic get date;
  @override
  @JsonKey(ignore: true)
  _$$_CommentCopyWith<_$_Comment> get copyWith =>
      throw _privateConstructorUsedError;
}
