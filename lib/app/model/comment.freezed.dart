// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment.dart';

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
  @JsonKey(name: 'author_id')
  String? get authorId => throw _privateConstructorUsedError;
  @JsonKey(name: 'author_username')
  String? get authorUsername => throw _privateConstructorUsedError;
  @JsonKey(name: 'author_profile_image_url')
  String? get authorProfileImageURL => throw _privateConstructorUsedError;
  String get postId =>
      throw _privateConstructorUsedError; //required PostType postType,
//todo!! post type
  String get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentCopyWith<Comment> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentCopyWith<$Res> {
  factory $CommentCopyWith(Comment value, $Res Function(Comment) then) =
      _$CommentCopyWithImpl<$Res, Comment>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'author_id') String? authorId,
      @JsonKey(name: 'author_username') String? authorUsername,
      @JsonKey(name: 'author_profile_image_url') String? authorProfileImageURL,
      String postId,
      String content,
      @JsonKey(name: 'created_at') DateTime? date});
}

/// @nodoc
class _$CommentCopyWithImpl<$Res, $Val extends Comment>
    implements $CommentCopyWith<$Res> {
  _$CommentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? authorId = freezed,
    Object? authorUsername = freezed,
    Object? authorProfileImageURL = freezed,
    Object? postId = null,
    Object? content = null,
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      authorId: freezed == authorId
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String?,
      authorUsername: freezed == authorUsername
          ? _value.authorUsername
          : authorUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      authorProfileImageURL: freezed == authorProfileImageURL
          ? _value.authorProfileImageURL
          : authorProfileImageURL // ignore: cast_nullable_to_non_nullable
              as String?,
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CommentCopyWith<$Res> implements $CommentCopyWith<$Res> {
  factory _$$_CommentCopyWith(
          _$_Comment value, $Res Function(_$_Comment) then) =
      __$$_CommentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'author_id') String? authorId,
      @JsonKey(name: 'author_username') String? authorUsername,
      @JsonKey(name: 'author_profile_image_url') String? authorProfileImageURL,
      String postId,
      String content,
      @JsonKey(name: 'created_at') DateTime? date});
}

/// @nodoc
class __$$_CommentCopyWithImpl<$Res>
    extends _$CommentCopyWithImpl<$Res, _$_Comment>
    implements _$$_CommentCopyWith<$Res> {
  __$$_CommentCopyWithImpl(_$_Comment _value, $Res Function(_$_Comment) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? authorId = freezed,
    Object? authorUsername = freezed,
    Object? authorProfileImageURL = freezed,
    Object? postId = null,
    Object? content = null,
    Object? date = freezed,
  }) {
    return _then(_$_Comment(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      authorId: freezed == authorId
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as String?,
      authorUsername: freezed == authorUsername
          ? _value.authorUsername
          : authorUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      authorProfileImageURL: freezed == authorProfileImageURL
          ? _value.authorProfileImageURL
          : authorProfileImageURL // ignore: cast_nullable_to_non_nullable
              as String?,
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
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
class _$_Comment extends _Comment {
  const _$_Comment(
      {this.id,
      @JsonKey(name: 'author_id') this.authorId,
      @JsonKey(name: 'author_username') this.authorUsername,
      @JsonKey(name: 'author_profile_image_url') this.authorProfileImageURL,
      required this.postId,
      required this.content,
      @JsonKey(name: 'created_at') this.date})
      : super._();

  factory _$_Comment.fromJson(Map<String, dynamic> json) =>
      _$$_CommentFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'author_id')
  final String? authorId;
  @override
  @JsonKey(name: 'author_username')
  final String? authorUsername;
  @override
  @JsonKey(name: 'author_profile_image_url')
  final String? authorProfileImageURL;
  @override
  final String postId;
//required PostType postType,
//todo!! post type
  @override
  final String content;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? date;

  @override
  String toString() {
    return 'Comment(id: $id, authorId: $authorId, authorUsername: $authorUsername, authorProfileImageURL: $authorProfileImageURL, postId: $postId, content: $content, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Comment &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.authorId, authorId) ||
                other.authorId == authorId) &&
            (identical(other.authorUsername, authorUsername) ||
                other.authorUsername == authorUsername) &&
            (identical(other.authorProfileImageURL, authorProfileImageURL) ||
                other.authorProfileImageURL == authorProfileImageURL) &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, authorId, authorUsername,
      authorProfileImageURL, postId, content, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
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
      @JsonKey(name: 'author_id')
          final String? authorId,
      @JsonKey(name: 'author_username')
          final String? authorUsername,
      @JsonKey(name: 'author_profile_image_url')
          final String? authorProfileImageURL,
      required final String postId,
      required final String content,
      @JsonKey(name: 'created_at')
          final DateTime? date}) = _$_Comment;
  const _Comment._() : super._();

  factory _Comment.fromJson(Map<String, dynamic> json) = _$_Comment.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'author_id')
  String? get authorId;
  @override
  @JsonKey(name: 'author_username')
  String? get authorUsername;
  @override
  @JsonKey(name: 'author_profile_image_url')
  String? get authorProfileImageURL;
  @override
  String get postId;
  @override //required PostType postType,
//todo!! post type
  String get content;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get date;
  @override
  @JsonKey(ignore: true)
  _$$_CommentCopyWith<_$_Comment> get copyWith =>
      throw _privateConstructorUsedError;
}
