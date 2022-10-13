// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'saved_post_model.dart';

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
  PostType get postType => throw _privateConstructorUsedError;
  @JsonKey(toJson: fireStorePostToJson)
  dynamic get post => throw _privateConstructorUsedError;
  @JsonKey(
      toJson: fireStoreTimestampToJson, fromJson: fireStoreTimestampFromJson)
  dynamic get dateCreated => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SavedPostCopyWith<SavedPost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavedPostCopyWith<$Res> {
  factory $SavedPostCopyWith(SavedPost value, $Res Function(SavedPost) then) =
      _$SavedPostCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String savedOwner,
      PostType postType,
      @JsonKey(toJson: fireStorePostToJson)
          dynamic post,
      @JsonKey(toJson: fireStoreTimestampToJson, fromJson: fireStoreTimestampFromJson)
          dynamic dateCreated});
}

/// @nodoc
class _$SavedPostCopyWithImpl<$Res> implements $SavedPostCopyWith<$Res> {
  _$SavedPostCopyWithImpl(this._value, this._then);

  final SavedPost _value;
  // ignore: unused_field
  final $Res Function(SavedPost) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? savedOwner = freezed,
    Object? postType = freezed,
    Object? post = freezed,
    Object? dateCreated = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      savedOwner: savedOwner == freezed
          ? _value.savedOwner
          : savedOwner // ignore: cast_nullable_to_non_nullable
              as String,
      postType: postType == freezed
          ? _value.postType
          : postType // ignore: cast_nullable_to_non_nullable
              as PostType,
      post: post == freezed
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as dynamic,
      dateCreated: dateCreated == freezed
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$$_SavedPostCopyWith<$Res> implements $SavedPostCopyWith<$Res> {
  factory _$$_SavedPostCopyWith(
          _$_SavedPost value, $Res Function(_$_SavedPost) then) =
      __$$_SavedPostCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String savedOwner,
      PostType postType,
      @JsonKey(toJson: fireStorePostToJson)
          dynamic post,
      @JsonKey(toJson: fireStoreTimestampToJson, fromJson: fireStoreTimestampFromJson)
          dynamic dateCreated});
}

/// @nodoc
class __$$_SavedPostCopyWithImpl<$Res> extends _$SavedPostCopyWithImpl<$Res>
    implements _$$_SavedPostCopyWith<$Res> {
  __$$_SavedPostCopyWithImpl(
      _$_SavedPost _value, $Res Function(_$_SavedPost) _then)
      : super(_value, (v) => _then(v as _$_SavedPost));

  @override
  _$_SavedPost get _value => super._value as _$_SavedPost;

  @override
  $Res call({
    Object? id = freezed,
    Object? savedOwner = freezed,
    Object? postType = freezed,
    Object? post = freezed,
    Object? dateCreated = freezed,
  }) {
    return _then(_$_SavedPost(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      savedOwner: savedOwner == freezed
          ? _value.savedOwner
          : savedOwner // ignore: cast_nullable_to_non_nullable
              as String,
      postType: postType == freezed
          ? _value.postType
          : postType // ignore: cast_nullable_to_non_nullable
              as PostType,
      post: post == freezed
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as dynamic,
      dateCreated: dateCreated == freezed
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SavedPost extends _SavedPost {
  const _$_SavedPost(
      {this.id,
      required this.savedOwner,
      required this.postType,
      @JsonKey(toJson: fireStorePostToJson)
          this.post,
      @JsonKey(toJson: fireStoreTimestampToJson, fromJson: fireStoreTimestampFromJson)
          required this.dateCreated})
      : super._();

  factory _$_SavedPost.fromJson(Map<String, dynamic> json) =>
      _$$_SavedPostFromJson(json);

  @override
  final String? id;
  @override
  final String savedOwner;
  @override
  final PostType postType;
  @override
  @JsonKey(toJson: fireStorePostToJson)
  final dynamic post;
  @override
  @JsonKey(
      toJson: fireStoreTimestampToJson, fromJson: fireStoreTimestampFromJson)
  final dynamic dateCreated;

  @override
  String toString() {
    return 'SavedPost(id: $id, savedOwner: $savedOwner, postType: $postType, post: $post, dateCreated: $dateCreated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SavedPost &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.savedOwner, savedOwner) &&
            const DeepCollectionEquality().equals(other.postType, postType) &&
            const DeepCollectionEquality().equals(other.post, post) &&
            const DeepCollectionEquality()
                .equals(other.dateCreated, dateCreated));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(savedOwner),
      const DeepCollectionEquality().hash(postType),
      const DeepCollectionEquality().hash(post),
      const DeepCollectionEquality().hash(dateCreated));

  @JsonKey(ignore: true)
  @override
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
      required final PostType postType,
      @JsonKey(toJson: fireStorePostToJson)
          final dynamic post,
      @JsonKey(toJson: fireStoreTimestampToJson, fromJson: fireStoreTimestampFromJson)
          required final dynamic dateCreated}) = _$_SavedPost;
  const _SavedPost._() : super._();

  factory _SavedPost.fromJson(Map<String, dynamic> json) =
      _$_SavedPost.fromJson;

  @override
  String? get id;
  @override
  String get savedOwner;
  @override
  PostType get postType;
  @override
  @JsonKey(toJson: fireStorePostToJson)
  dynamic get post;
  @override
  @JsonKey(
      toJson: fireStoreTimestampToJson, fromJson: fireStoreTimestampFromJson)
  dynamic get dateCreated;
  @override
  @JsonKey(ignore: true)
  _$$_SavedPostCopyWith<_$_SavedPost> get copyWith =>
      throw _privateConstructorUsedError;
}
