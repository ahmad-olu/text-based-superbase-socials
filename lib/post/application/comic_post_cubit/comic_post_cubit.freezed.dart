// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'comic_post_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ComicPostState {
  List<File?>? get postImages => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get subTitle => throw _privateConstructorUsedError;
  ComicPostStatus get status => throw _privateConstructorUsedError;
  List<String> get category => throw _privateConstructorUsedError;
  Exception? get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ComicPostStateCopyWith<ComicPostState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComicPostStateCopyWith<$Res> {
  factory $ComicPostStateCopyWith(
          ComicPostState value, $Res Function(ComicPostState) then) =
      _$ComicPostStateCopyWithImpl<$Res>;
  $Res call(
      {List<File?>? postImages,
      String title,
      String subTitle,
      ComicPostStatus status,
      List<String> category,
      Exception? failure});
}

/// @nodoc
class _$ComicPostStateCopyWithImpl<$Res>
    implements $ComicPostStateCopyWith<$Res> {
  _$ComicPostStateCopyWithImpl(this._value, this._then);

  final ComicPostState _value;
  // ignore: unused_field
  final $Res Function(ComicPostState) _then;

  @override
  $Res call({
    Object? postImages = freezed,
    Object? title = freezed,
    Object? subTitle = freezed,
    Object? status = freezed,
    Object? category = freezed,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      postImages: postImages == freezed
          ? _value.postImages
          : postImages // ignore: cast_nullable_to_non_nullable
              as List<File?>?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subTitle: subTitle == freezed
          ? _value.subTitle
          : subTitle // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ComicPostStatus,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as List<String>,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ));
  }
}

/// @nodoc
abstract class _$$_ComicPostStateCopyWith<$Res>
    implements $ComicPostStateCopyWith<$Res> {
  factory _$$_ComicPostStateCopyWith(
          _$_ComicPostState value, $Res Function(_$_ComicPostState) then) =
      __$$_ComicPostStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<File?>? postImages,
      String title,
      String subTitle,
      ComicPostStatus status,
      List<String> category,
      Exception? failure});
}

/// @nodoc
class __$$_ComicPostStateCopyWithImpl<$Res>
    extends _$ComicPostStateCopyWithImpl<$Res>
    implements _$$_ComicPostStateCopyWith<$Res> {
  __$$_ComicPostStateCopyWithImpl(
      _$_ComicPostState _value, $Res Function(_$_ComicPostState) _then)
      : super(_value, (v) => _then(v as _$_ComicPostState));

  @override
  _$_ComicPostState get _value => super._value as _$_ComicPostState;

  @override
  $Res call({
    Object? postImages = freezed,
    Object? title = freezed,
    Object? subTitle = freezed,
    Object? status = freezed,
    Object? category = freezed,
    Object? failure = freezed,
  }) {
    return _then(_$_ComicPostState(
      postImages: postImages == freezed
          ? _value._postImages
          : postImages // ignore: cast_nullable_to_non_nullable
              as List<File?>?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subTitle: subTitle == freezed
          ? _value.subTitle
          : subTitle // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ComicPostStatus,
      category: category == freezed
          ? _value._category
          : category // ignore: cast_nullable_to_non_nullable
              as List<String>,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ));
  }
}

/// @nodoc

class _$_ComicPostState implements _ComicPostState {
  const _$_ComicPostState(
      {required final List<File?>? postImages,
      required this.title,
      required this.subTitle,
      required this.status,
      required final List<String> category,
      required this.failure})
      : _postImages = postImages,
        _category = category;

  final List<File?>? _postImages;
  @override
  List<File?>? get postImages {
    final value = _postImages;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String title;
  @override
  final String subTitle;
  @override
  final ComicPostStatus status;
  final List<String> _category;
  @override
  List<String> get category {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_category);
  }

  @override
  final Exception? failure;

  @override
  String toString() {
    return 'ComicPostState(postImages: $postImages, title: $title, subTitle: $subTitle, status: $status, category: $category, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ComicPostState &&
            const DeepCollectionEquality()
                .equals(other._postImages, _postImages) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.subTitle, subTitle) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other._category, _category) &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_postImages),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(subTitle),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(_category),
      const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$$_ComicPostStateCopyWith<_$_ComicPostState> get copyWith =>
      __$$_ComicPostStateCopyWithImpl<_$_ComicPostState>(this, _$identity);
}

abstract class _ComicPostState implements ComicPostState {
  const factory _ComicPostState(
      {required final List<File?>? postImages,
      required final String title,
      required final String subTitle,
      required final ComicPostStatus status,
      required final List<String> category,
      required final Exception? failure}) = _$_ComicPostState;

  @override
  List<File?>? get postImages;
  @override
  String get title;
  @override
  String get subTitle;
  @override
  ComicPostStatus get status;
  @override
  List<String> get category;
  @override
  Exception? get failure;
  @override
  @JsonKey(ignore: true)
  _$$_ComicPostStateCopyWith<_$_ComicPostState> get copyWith =>
      throw _privateConstructorUsedError;
}
