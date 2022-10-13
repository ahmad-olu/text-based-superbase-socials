// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PostCategory _$PostCategoryFromJson(Map<String, dynamic> json) {
  return _PostCategory.fromJson(json);
}

/// @nodoc
mixin _$PostCategory {
  String? get id => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  @JsonKey(toJson: fireStorePostToJson)
  dynamic get post => throw _privateConstructorUsedError;
  PostType get postType => throw _privateConstructorUsedError;
  @JsonKey(toJson: fireStoreUserToJson)
  dynamic get author => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostCategoryCopyWith<PostCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostCategoryCopyWith<$Res> {
  factory $PostCategoryCopyWith(
          PostCategory value, $Res Function(PostCategory) then) =
      _$PostCategoryCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String category,
      @JsonKey(toJson: fireStorePostToJson) dynamic post,
      PostType postType,
      @JsonKey(toJson: fireStoreUserToJson) dynamic author});
}

/// @nodoc
class _$PostCategoryCopyWithImpl<$Res> implements $PostCategoryCopyWith<$Res> {
  _$PostCategoryCopyWithImpl(this._value, this._then);

  final PostCategory _value;
  // ignore: unused_field
  final $Res Function(PostCategory) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? category = freezed,
    Object? post = freezed,
    Object? postType = freezed,
    Object? author = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      post: post == freezed
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as dynamic,
      postType: postType == freezed
          ? _value.postType
          : postType // ignore: cast_nullable_to_non_nullable
              as PostType,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$$_PostCategoryCopyWith<$Res>
    implements $PostCategoryCopyWith<$Res> {
  factory _$$_PostCategoryCopyWith(
          _$_PostCategory value, $Res Function(_$_PostCategory) then) =
      __$$_PostCategoryCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String category,
      @JsonKey(toJson: fireStorePostToJson) dynamic post,
      PostType postType,
      @JsonKey(toJson: fireStoreUserToJson) dynamic author});
}

/// @nodoc
class __$$_PostCategoryCopyWithImpl<$Res>
    extends _$PostCategoryCopyWithImpl<$Res>
    implements _$$_PostCategoryCopyWith<$Res> {
  __$$_PostCategoryCopyWithImpl(
      _$_PostCategory _value, $Res Function(_$_PostCategory) _then)
      : super(_value, (v) => _then(v as _$_PostCategory));

  @override
  _$_PostCategory get _value => super._value as _$_PostCategory;

  @override
  $Res call({
    Object? id = freezed,
    Object? category = freezed,
    Object? post = freezed,
    Object? postType = freezed,
    Object? author = freezed,
  }) {
    return _then(_$_PostCategory(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      post: post == freezed
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as dynamic,
      postType: postType == freezed
          ? _value.postType
          : postType // ignore: cast_nullable_to_non_nullable
              as PostType,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PostCategory extends _PostCategory {
  const _$_PostCategory(
      {this.id,
      required this.category,
      @JsonKey(toJson: fireStorePostToJson) this.post,
      required this.postType,
      @JsonKey(toJson: fireStoreUserToJson) required this.author})
      : super._();

  factory _$_PostCategory.fromJson(Map<String, dynamic> json) =>
      _$$_PostCategoryFromJson(json);

  @override
  final String? id;
  @override
  final String category;
  @override
  @JsonKey(toJson: fireStorePostToJson)
  final dynamic post;
  @override
  final PostType postType;
  @override
  @JsonKey(toJson: fireStoreUserToJson)
  final dynamic author;

  @override
  String toString() {
    return 'PostCategory(id: $id, category: $category, post: $post, postType: $postType, author: $author)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostCategory &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality().equals(other.post, post) &&
            const DeepCollectionEquality().equals(other.postType, postType) &&
            const DeepCollectionEquality().equals(other.author, author));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(category),
      const DeepCollectionEquality().hash(post),
      const DeepCollectionEquality().hash(postType),
      const DeepCollectionEquality().hash(author));

  @JsonKey(ignore: true)
  @override
  _$$_PostCategoryCopyWith<_$_PostCategory> get copyWith =>
      __$$_PostCategoryCopyWithImpl<_$_PostCategory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostCategoryToJson(
      this,
    );
  }
}

abstract class _PostCategory extends PostCategory {
  const factory _PostCategory(
      {final String? id,
      required final String category,
      @JsonKey(toJson: fireStorePostToJson)
          final dynamic post,
      required final PostType postType,
      @JsonKey(toJson: fireStoreUserToJson)
          required final dynamic author}) = _$_PostCategory;
  const _PostCategory._() : super._();

  factory _PostCategory.fromJson(Map<String, dynamic> json) =
      _$_PostCategory.fromJson;

  @override
  String? get id;
  @override
  String get category;
  @override
  @JsonKey(toJson: fireStorePostToJson)
  dynamic get post;
  @override
  PostType get postType;
  @override
  @JsonKey(toJson: fireStoreUserToJson)
  dynamic get author;
  @override
  @JsonKey(ignore: true)
  _$$_PostCategoryCopyWith<_$_PostCategory> get copyWith =>
      throw _privateConstructorUsedError;
}
