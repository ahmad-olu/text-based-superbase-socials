// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Post _$PostFromJson(Map<String, dynamic> json) {
  return _Post.fromJson(json);
}

/// @nodoc
mixin _$Post {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'author_id')
  String? get authorId => throw _privateConstructorUsedError;
  @JsonKey(name: 'author_username')
  String? get authorUsername => throw _privateConstructorUsedError;
  @JsonKey(name: 'author_profile_image_url')
  String? get authorProfileImageUrl => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'sub_title')
  String? get subTitle => throw _privateConstructorUsedError;
  bool get publish => throw _privateConstructorUsedError;
  @JsonKey(name: 'can_re_imagine')
  bool get canReImagine => throw _privateConstructorUsedError;
  @JsonKey(name: 'can_comment')
  bool get canComment => throw _privateConstructorUsedError;
  @JsonKey(name: 'images_url')
  List<String>? get imagesURL => throw _privateConstructorUsedError;
  String? get content =>
      throw _privateConstructorUsedError; //required PostType postType,
//Todo!!: handle post type and categories
//required List<String>? category,
  @JsonKey(name: 'created_at')
  DateTime get dateCreated => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostCopyWith<Post> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostCopyWith<$Res> {
  factory $PostCopyWith(Post value, $Res Function(Post) then) =
      _$PostCopyWithImpl<$Res, Post>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'author_id') String? authorId,
      @JsonKey(name: 'author_username') String? authorUsername,
      @JsonKey(name: 'author_profile_image_url') String? authorProfileImageUrl,
      String title,
      @JsonKey(name: 'sub_title') String? subTitle,
      bool publish,
      @JsonKey(name: 'can_re_imagine') bool canReImagine,
      @JsonKey(name: 'can_comment') bool canComment,
      @JsonKey(name: 'images_url') List<String>? imagesURL,
      String? content,
      @JsonKey(name: 'created_at') DateTime dateCreated});
}

/// @nodoc
class _$PostCopyWithImpl<$Res, $Val extends Post>
    implements $PostCopyWith<$Res> {
  _$PostCopyWithImpl(this._value, this._then);

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
    Object? authorProfileImageUrl = freezed,
    Object? title = null,
    Object? subTitle = freezed,
    Object? publish = null,
    Object? canReImagine = null,
    Object? canComment = null,
    Object? imagesURL = freezed,
    Object? content = freezed,
    Object? dateCreated = null,
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
      authorProfileImageUrl: freezed == authorProfileImageUrl
          ? _value.authorProfileImageUrl
          : authorProfileImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subTitle: freezed == subTitle
          ? _value.subTitle
          : subTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      publish: null == publish
          ? _value.publish
          : publish // ignore: cast_nullable_to_non_nullable
              as bool,
      canReImagine: null == canReImagine
          ? _value.canReImagine
          : canReImagine // ignore: cast_nullable_to_non_nullable
              as bool,
      canComment: null == canComment
          ? _value.canComment
          : canComment // ignore: cast_nullable_to_non_nullable
              as bool,
      imagesURL: freezed == imagesURL
          ? _value.imagesURL
          : imagesURL // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      dateCreated: null == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PostCopyWith<$Res> implements $PostCopyWith<$Res> {
  factory _$$_PostCopyWith(_$_Post value, $Res Function(_$_Post) then) =
      __$$_PostCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'author_id') String? authorId,
      @JsonKey(name: 'author_username') String? authorUsername,
      @JsonKey(name: 'author_profile_image_url') String? authorProfileImageUrl,
      String title,
      @JsonKey(name: 'sub_title') String? subTitle,
      bool publish,
      @JsonKey(name: 'can_re_imagine') bool canReImagine,
      @JsonKey(name: 'can_comment') bool canComment,
      @JsonKey(name: 'images_url') List<String>? imagesURL,
      String? content,
      @JsonKey(name: 'created_at') DateTime dateCreated});
}

/// @nodoc
class __$$_PostCopyWithImpl<$Res> extends _$PostCopyWithImpl<$Res, _$_Post>
    implements _$$_PostCopyWith<$Res> {
  __$$_PostCopyWithImpl(_$_Post _value, $Res Function(_$_Post) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? authorId = freezed,
    Object? authorUsername = freezed,
    Object? authorProfileImageUrl = freezed,
    Object? title = null,
    Object? subTitle = freezed,
    Object? publish = null,
    Object? canReImagine = null,
    Object? canComment = null,
    Object? imagesURL = freezed,
    Object? content = freezed,
    Object? dateCreated = null,
  }) {
    return _then(_$_Post(
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
      authorProfileImageUrl: freezed == authorProfileImageUrl
          ? _value.authorProfileImageUrl
          : authorProfileImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subTitle: freezed == subTitle
          ? _value.subTitle
          : subTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      publish: null == publish
          ? _value.publish
          : publish // ignore: cast_nullable_to_non_nullable
              as bool,
      canReImagine: null == canReImagine
          ? _value.canReImagine
          : canReImagine // ignore: cast_nullable_to_non_nullable
              as bool,
      canComment: null == canComment
          ? _value.canComment
          : canComment // ignore: cast_nullable_to_non_nullable
              as bool,
      imagesURL: freezed == imagesURL
          ? _value._imagesURL
          : imagesURL // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      dateCreated: null == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Post extends _Post {
  const _$_Post(
      {this.id,
      @JsonKey(name: 'author_id') this.authorId,
      @JsonKey(name: 'author_username') this.authorUsername,
      @JsonKey(name: 'author_profile_image_url') this.authorProfileImageUrl,
      required this.title,
      @JsonKey(name: 'sub_title') this.subTitle,
      required this.publish,
      @JsonKey(name: 'can_re_imagine') required this.canReImagine,
      @JsonKey(name: 'can_comment') required this.canComment,
      @JsonKey(name: 'images_url') required final List<String>? imagesURL,
      required this.content,
      @JsonKey(name: 'created_at') required this.dateCreated})
      : _imagesURL = imagesURL,
        super._();

  factory _$_Post.fromJson(Map<String, dynamic> json) => _$$_PostFromJson(json);

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
  final String? authorProfileImageUrl;
  @override
  final String title;
  @override
  @JsonKey(name: 'sub_title')
  final String? subTitle;
  @override
  final bool publish;
  @override
  @JsonKey(name: 'can_re_imagine')
  final bool canReImagine;
  @override
  @JsonKey(name: 'can_comment')
  final bool canComment;
  final List<String>? _imagesURL;
  @override
  @JsonKey(name: 'images_url')
  List<String>? get imagesURL {
    final value = _imagesURL;
    if (value == null) return null;
    if (_imagesURL is EqualUnmodifiableListView) return _imagesURL;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? content;
//required PostType postType,
//Todo!!: handle post type and categories
//required List<String>? category,
  @override
  @JsonKey(name: 'created_at')
  final DateTime dateCreated;

  @override
  String toString() {
    return 'Post(id: $id, authorId: $authorId, authorUsername: $authorUsername, authorProfileImageUrl: $authorProfileImageUrl, title: $title, subTitle: $subTitle, publish: $publish, canReImagine: $canReImagine, canComment: $canComment, imagesURL: $imagesURL, content: $content, dateCreated: $dateCreated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Post &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.authorId, authorId) ||
                other.authorId == authorId) &&
            (identical(other.authorUsername, authorUsername) ||
                other.authorUsername == authorUsername) &&
            (identical(other.authorProfileImageUrl, authorProfileImageUrl) ||
                other.authorProfileImageUrl == authorProfileImageUrl) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subTitle, subTitle) ||
                other.subTitle == subTitle) &&
            (identical(other.publish, publish) || other.publish == publish) &&
            (identical(other.canReImagine, canReImagine) ||
                other.canReImagine == canReImagine) &&
            (identical(other.canComment, canComment) ||
                other.canComment == canComment) &&
            const DeepCollectionEquality()
                .equals(other._imagesURL, _imagesURL) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.dateCreated, dateCreated) ||
                other.dateCreated == dateCreated));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      authorId,
      authorUsername,
      authorProfileImageUrl,
      title,
      subTitle,
      publish,
      canReImagine,
      canComment,
      const DeepCollectionEquality().hash(_imagesURL),
      content,
      dateCreated);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PostCopyWith<_$_Post> get copyWith =>
      __$$_PostCopyWithImpl<_$_Post>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostToJson(
      this,
    );
  }
}

abstract class _Post extends Post {
  const factory _Post(
      {final String? id,
      @JsonKey(name: 'author_id')
          final String? authorId,
      @JsonKey(name: 'author_username')
          final String? authorUsername,
      @JsonKey(name: 'author_profile_image_url')
          final String? authorProfileImageUrl,
      required final String title,
      @JsonKey(name: 'sub_title')
          final String? subTitle,
      required final bool publish,
      @JsonKey(name: 'can_re_imagine')
          required final bool canReImagine,
      @JsonKey(name: 'can_comment')
          required final bool canComment,
      @JsonKey(name: 'images_url')
          required final List<String>? imagesURL,
      required final String? content,
      @JsonKey(name: 'created_at')
          required final DateTime dateCreated}) = _$_Post;
  const _Post._() : super._();

  factory _Post.fromJson(Map<String, dynamic> json) = _$_Post.fromJson;

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
  String? get authorProfileImageUrl;
  @override
  String get title;
  @override
  @JsonKey(name: 'sub_title')
  String? get subTitle;
  @override
  bool get publish;
  @override
  @JsonKey(name: 'can_re_imagine')
  bool get canReImagine;
  @override
  @JsonKey(name: 'can_comment')
  bool get canComment;
  @override
  @JsonKey(name: 'images_url')
  List<String>? get imagesURL;
  @override
  String? get content;
  @override //required PostType postType,
//Todo!!: handle post type and categories
//required List<String>? category,
  @JsonKey(name: 'created_at')
  DateTime get dateCreated;
  @override
  @JsonKey(ignore: true)
  _$$_PostCopyWith<_$_Post> get copyWith => throw _privateConstructorUsedError;
}
