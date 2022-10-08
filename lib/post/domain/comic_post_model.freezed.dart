// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'comic_post_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ComicPost _$ComicPostFromJson(Map<String, dynamic> json) {
  return _ComicPost.fromJson(json);
}

/// @nodoc
mixin _$ComicPost {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(toJson: fireStoreUserToJson)
  dynamic get author => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get subTitle => throw _privateConstructorUsedError;
  List<String> get imageUrls => throw _privateConstructorUsedError;
  bool get canReImagine => throw _privateConstructorUsedError;
  PostType? get postType => throw _privateConstructorUsedError;
  List<String>? get category => throw _privateConstructorUsedError;
  int get likes => throw _privateConstructorUsedError;
  @JsonKey(
      toJson: fireStoreTimestampToJson, fromJson: fireStoreTimestampFromJson)
  dynamic get dateCreated => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ComicPostCopyWith<ComicPost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComicPostCopyWith<$Res> {
  factory $ComicPostCopyWith(ComicPost value, $Res Function(ComicPost) then) =
      _$ComicPostCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      @JsonKey(toJson: fireStoreUserToJson)
          dynamic author,
      String title,
      String? subTitle,
      List<String> imageUrls,
      bool canReImagine,
      PostType? postType,
      List<String>? category,
      int likes,
      @JsonKey(toJson: fireStoreTimestampToJson, fromJson: fireStoreTimestampFromJson)
          dynamic dateCreated});
}

/// @nodoc
class _$ComicPostCopyWithImpl<$Res> implements $ComicPostCopyWith<$Res> {
  _$ComicPostCopyWithImpl(this._value, this._then);

  final ComicPost _value;
  // ignore: unused_field
  final $Res Function(ComicPost) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? author = freezed,
    Object? title = freezed,
    Object? subTitle = freezed,
    Object? imageUrls = freezed,
    Object? canReImagine = freezed,
    Object? postType = freezed,
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
      imageUrls: imageUrls == freezed
          ? _value.imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      canReImagine: canReImagine == freezed
          ? _value.canReImagine
          : canReImagine // ignore: cast_nullable_to_non_nullable
              as bool,
      postType: postType == freezed
          ? _value.postType
          : postType // ignore: cast_nullable_to_non_nullable
              as PostType?,
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
abstract class _$$_ComicPostCopyWith<$Res> implements $ComicPostCopyWith<$Res> {
  factory _$$_ComicPostCopyWith(
          _$_ComicPost value, $Res Function(_$_ComicPost) then) =
      __$$_ComicPostCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      @JsonKey(toJson: fireStoreUserToJson)
          dynamic author,
      String title,
      String? subTitle,
      List<String> imageUrls,
      bool canReImagine,
      PostType? postType,
      List<String>? category,
      int likes,
      @JsonKey(toJson: fireStoreTimestampToJson, fromJson: fireStoreTimestampFromJson)
          dynamic dateCreated});
}

/// @nodoc
class __$$_ComicPostCopyWithImpl<$Res> extends _$ComicPostCopyWithImpl<$Res>
    implements _$$_ComicPostCopyWith<$Res> {
  __$$_ComicPostCopyWithImpl(
      _$_ComicPost _value, $Res Function(_$_ComicPost) _then)
      : super(_value, (v) => _then(v as _$_ComicPost));

  @override
  _$_ComicPost get _value => super._value as _$_ComicPost;

  @override
  $Res call({
    Object? id = freezed,
    Object? author = freezed,
    Object? title = freezed,
    Object? subTitle = freezed,
    Object? imageUrls = freezed,
    Object? canReImagine = freezed,
    Object? postType = freezed,
    Object? category = freezed,
    Object? likes = freezed,
    Object? dateCreated = freezed,
  }) {
    return _then(_$_ComicPost(
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
      imageUrls: imageUrls == freezed
          ? _value._imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      canReImagine: canReImagine == freezed
          ? _value.canReImagine
          : canReImagine // ignore: cast_nullable_to_non_nullable
              as bool,
      postType: postType == freezed
          ? _value.postType
          : postType // ignore: cast_nullable_to_non_nullable
              as PostType?,
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
class _$_ComicPost extends _ComicPost {
  const _$_ComicPost(
      {this.id,
      @JsonKey(toJson: fireStoreUserToJson)
          required this.author,
      required this.title,
      required this.subTitle,
      required final List<String> imageUrls,
      required this.canReImagine,
      required this.postType,
      required final List<String>? category,
      required this.likes,
      @JsonKey(toJson: fireStoreTimestampToJson, fromJson: fireStoreTimestampFromJson)
          required this.dateCreated})
      : _imageUrls = imageUrls,
        _category = category,
        super._();

  factory _$_ComicPost.fromJson(Map<String, dynamic> json) =>
      _$$_ComicPostFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(toJson: fireStoreUserToJson)
  final dynamic author;
  @override
  final String title;
  @override
  final String? subTitle;
  final List<String> _imageUrls;
  @override
  List<String> get imageUrls {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imageUrls);
  }

  @override
  final bool canReImagine;
  @override
  final PostType? postType;
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
    return 'ComicPost(id: $id, author: $author, title: $title, subTitle: $subTitle, imageUrls: $imageUrls, canReImagine: $canReImagine, postType: $postType, category: $category, likes: $likes, dateCreated: $dateCreated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ComicPost &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.author, author) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.subTitle, subTitle) &&
            const DeepCollectionEquality()
                .equals(other._imageUrls, _imageUrls) &&
            const DeepCollectionEquality()
                .equals(other.canReImagine, canReImagine) &&
            const DeepCollectionEquality().equals(other.postType, postType) &&
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
      const DeepCollectionEquality().hash(_imageUrls),
      const DeepCollectionEquality().hash(canReImagine),
      const DeepCollectionEquality().hash(postType),
      const DeepCollectionEquality().hash(_category),
      const DeepCollectionEquality().hash(likes),
      const DeepCollectionEquality().hash(dateCreated));

  @JsonKey(ignore: true)
  @override
  _$$_ComicPostCopyWith<_$_ComicPost> get copyWith =>
      __$$_ComicPostCopyWithImpl<_$_ComicPost>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ComicPostToJson(
      this,
    );
  }
}

abstract class _ComicPost extends ComicPost {
  const factory _ComicPost(
      {final String? id,
      @JsonKey(toJson: fireStoreUserToJson)
          required final dynamic author,
      required final String title,
      required final String? subTitle,
      required final List<String> imageUrls,
      required final bool canReImagine,
      required final PostType? postType,
      required final List<String>? category,
      required final int likes,
      @JsonKey(toJson: fireStoreTimestampToJson, fromJson: fireStoreTimestampFromJson)
          required final dynamic dateCreated}) = _$_ComicPost;
  const _ComicPost._() : super._();

  factory _ComicPost.fromJson(Map<String, dynamic> json) =
      _$_ComicPost.fromJson;

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
  List<String> get imageUrls;
  @override
  bool get canReImagine;
  @override
  PostType? get postType;
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
  _$$_ComicPostCopyWith<_$_ComicPost> get copyWith =>
      throw _privateConstructorUsedError;
}
