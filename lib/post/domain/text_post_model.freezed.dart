// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'text_post_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TextPost _$TextPostFromJson(Map<String, dynamic> json) {
  return _TextPost.fromJson(json);
}

/// @nodoc
mixin _$TextPost {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(toJson: fireStoreUserToJson)
  dynamic get author => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get subTitle => throw _privateConstructorUsedError;
  PostType? get postType => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  bool get canReImagine => throw _privateConstructorUsedError;
  List<String>? get category => throw _privateConstructorUsedError;
  int get likes => throw _privateConstructorUsedError;
  @JsonKey(
      toJson: fireStoreTimestampToJson, fromJson: fireStoreTimestampFromJson)
  dynamic get dateCreated => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TextPostCopyWith<TextPost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextPostCopyWith<$Res> {
  factory $TextPostCopyWith(TextPost value, $Res Function(TextPost) then) =
      _$TextPostCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      @JsonKey(toJson: fireStoreUserToJson)
          dynamic author,
      String title,
      String? subTitle,
      PostType? postType,
      String content,
      String? imageUrl,
      bool canReImagine,
      List<String>? category,
      int likes,
      @JsonKey(toJson: fireStoreTimestampToJson, fromJson: fireStoreTimestampFromJson)
          dynamic dateCreated});
}

/// @nodoc
class _$TextPostCopyWithImpl<$Res> implements $TextPostCopyWith<$Res> {
  _$TextPostCopyWithImpl(this._value, this._then);

  final TextPost _value;
  // ignore: unused_field
  final $Res Function(TextPost) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? author = freezed,
    Object? title = freezed,
    Object? subTitle = freezed,
    Object? postType = freezed,
    Object? content = freezed,
    Object? imageUrl = freezed,
    Object? canReImagine = freezed,
    Object? category = freezed,
    Object? likes = freezed,
    Object? dateCreated = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as dynamic,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subTitle: subTitle == freezed
          ? _value.subTitle
          : subTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      postType: postType == freezed
          ? _value.postType
          : postType // ignore: cast_nullable_to_non_nullable
              as PostType?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      canReImagine: canReImagine == freezed
          ? _value.canReImagine
          : canReImagine // ignore: cast_nullable_to_non_nullable
              as bool,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      likes: likes == freezed
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
      dateCreated: dateCreated == freezed
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$$_TextPostCopyWith<$Res> implements $TextPostCopyWith<$Res> {
  factory _$$_TextPostCopyWith(
          _$_TextPost value, $Res Function(_$_TextPost) then) =
      __$$_TextPostCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      @JsonKey(toJson: fireStoreUserToJson)
          dynamic author,
      String title,
      String? subTitle,
      PostType? postType,
      String content,
      String? imageUrl,
      bool canReImagine,
      List<String>? category,
      int likes,
      @JsonKey(toJson: fireStoreTimestampToJson, fromJson: fireStoreTimestampFromJson)
          dynamic dateCreated});
}

/// @nodoc
class __$$_TextPostCopyWithImpl<$Res> extends _$TextPostCopyWithImpl<$Res>
    implements _$$_TextPostCopyWith<$Res> {
  __$$_TextPostCopyWithImpl(
      _$_TextPost _value, $Res Function(_$_TextPost) _then)
      : super(_value, (v) => _then(v as _$_TextPost));

  @override
  _$_TextPost get _value => super._value as _$_TextPost;

  @override
  $Res call({
    Object? id = freezed,
    Object? author = freezed,
    Object? title = freezed,
    Object? subTitle = freezed,
    Object? postType = freezed,
    Object? content = freezed,
    Object? imageUrl = freezed,
    Object? canReImagine = freezed,
    Object? category = freezed,
    Object? likes = freezed,
    Object? dateCreated = freezed,
  }) {
    return _then(_$_TextPost(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as dynamic,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subTitle: subTitle == freezed
          ? _value.subTitle
          : subTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      postType: postType == freezed
          ? _value.postType
          : postType // ignore: cast_nullable_to_non_nullable
              as PostType?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      canReImagine: canReImagine == freezed
          ? _value.canReImagine
          : canReImagine // ignore: cast_nullable_to_non_nullable
              as bool,
      category: category == freezed
          ? _value._category
          : category // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      likes: likes == freezed
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
      dateCreated: dateCreated == freezed
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TextPost extends _TextPost {
  const _$_TextPost(
      {this.id,
      @JsonKey(toJson: fireStoreUserToJson)
          required this.author,
      required this.title,
      required this.subTitle,
      required this.postType,
      required this.content,
      required this.imageUrl,
      required this.canReImagine,
      required final List<String>? category,
      required this.likes,
      @JsonKey(toJson: fireStoreTimestampToJson, fromJson: fireStoreTimestampFromJson)
          required this.dateCreated})
      : _category = category,
        super._();

  factory _$_TextPost.fromJson(Map<String, dynamic> json) =>
      _$$_TextPostFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(toJson: fireStoreUserToJson)
  final dynamic author;
  @override
  final String title;
  @override
  final String? subTitle;
  @override
  final PostType? postType;
  @override
  final String content;
  @override
  final String? imageUrl;
  @override
  final bool canReImagine;
  final List<String>? _category;
  @override
  List<String>? get category {
    final value = _category;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int likes;
  @override
  @JsonKey(
      toJson: fireStoreTimestampToJson, fromJson: fireStoreTimestampFromJson)
  final dynamic dateCreated;

  @override
  String toString() {
    return 'TextPost(id: $id, author: $author, title: $title, subTitle: $subTitle, postType: $postType, content: $content, imageUrl: $imageUrl, canReImagine: $canReImagine, category: $category, likes: $likes, dateCreated: $dateCreated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TextPost &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.author, author) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.subTitle, subTitle) &&
            const DeepCollectionEquality().equals(other.postType, postType) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality()
                .equals(other.canReImagine, canReImagine) &&
            const DeepCollectionEquality().equals(other._category, _category) &&
            const DeepCollectionEquality().equals(other.likes, likes) &&
            const DeepCollectionEquality()
                .equals(other.dateCreated, dateCreated));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(author),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(subTitle),
      const DeepCollectionEquality().hash(postType),
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(canReImagine),
      const DeepCollectionEquality().hash(_category),
      const DeepCollectionEquality().hash(likes),
      const DeepCollectionEquality().hash(dateCreated));

  @JsonKey(ignore: true)
  @override
  _$$_TextPostCopyWith<_$_TextPost> get copyWith =>
      __$$_TextPostCopyWithImpl<_$_TextPost>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TextPostToJson(
      this,
    );
  }
}

abstract class _TextPost extends TextPost {
  const factory _TextPost(
      {final String? id,
      @JsonKey(toJson: fireStoreUserToJson)
          required final dynamic author,
      required final String title,
      required final String? subTitle,
      required final PostType? postType,
      required final String content,
      required final String? imageUrl,
      required final bool canReImagine,
      required final List<String>? category,
      required final int likes,
      @JsonKey(toJson: fireStoreTimestampToJson, fromJson: fireStoreTimestampFromJson)
          required final dynamic dateCreated}) = _$_TextPost;
  const _TextPost._() : super._();

  factory _TextPost.fromJson(Map<String, dynamic> json) = _$_TextPost.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(toJson: fireStoreUserToJson)
  dynamic get author;
  @override
  String get title;
  @override
  String? get subTitle;
  @override
  PostType? get postType;
  @override
  String get content;
  @override
  String? get imageUrl;
  @override
  bool get canReImagine;
  @override
  List<String>? get category;
  @override
  int get likes;
  @override
  @JsonKey(
      toJson: fireStoreTimestampToJson, fromJson: fireStoreTimestampFromJson)
  dynamic get dateCreated;
  @override
  @JsonKey(ignore: true)
  _$$_TextPostCopyWith<_$_TextPost> get copyWith =>
      throw _privateConstructorUsedError;
}
