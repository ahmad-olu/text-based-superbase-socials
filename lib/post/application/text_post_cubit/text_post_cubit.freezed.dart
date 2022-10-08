// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'text_post_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TextPostState {
  File? get postImage => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get contents => throw _privateConstructorUsedError;
  TextPostStatus get status => throw _privateConstructorUsedError;
  Exception? get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TextPostStateCopyWith<TextPostState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextPostStateCopyWith<$Res> {
  factory $TextPostStateCopyWith(
          TextPostState value, $Res Function(TextPostState) then) =
      _$TextPostStateCopyWithImpl<$Res>;
  $Res call(
      {File? postImage,
      String title,
      String contents,
      TextPostStatus status,
      Exception? failure});
}

/// @nodoc
class _$TextPostStateCopyWithImpl<$Res>
    implements $TextPostStateCopyWith<$Res> {
  _$TextPostStateCopyWithImpl(this._value, this._then);

  final TextPostState _value;
  // ignore: unused_field
  final $Res Function(TextPostState) _then;

  @override
  $Res call({
    Object? postImage = freezed,
    Object? title = freezed,
    Object? contents = freezed,
    Object? status = freezed,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      postImage: postImage == freezed
          ? _value.postImage
          : postImage // ignore: cast_nullable_to_non_nullable
              as File?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      contents: contents == freezed
          ? _value.contents
          : contents // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TextPostStatus,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ));
  }
}

/// @nodoc
abstract class _$$_TextPostStateCopyWith<$Res>
    implements $TextPostStateCopyWith<$Res> {
  factory _$$_TextPostStateCopyWith(
          _$_TextPostState value, $Res Function(_$_TextPostState) then) =
      __$$_TextPostStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {File? postImage,
      String title,
      String contents,
      TextPostStatus status,
      Exception? failure});
}

/// @nodoc
class __$$_TextPostStateCopyWithImpl<$Res>
    extends _$TextPostStateCopyWithImpl<$Res>
    implements _$$_TextPostStateCopyWith<$Res> {
  __$$_TextPostStateCopyWithImpl(
      _$_TextPostState _value, $Res Function(_$_TextPostState) _then)
      : super(_value, (v) => _then(v as _$_TextPostState));

  @override
  _$_TextPostState get _value => super._value as _$_TextPostState;

  @override
  $Res call({
    Object? postImage = freezed,
    Object? title = freezed,
    Object? contents = freezed,
    Object? status = freezed,
    Object? failure = freezed,
  }) {
    return _then(_$_TextPostState(
      postImage: postImage == freezed
          ? _value.postImage
          : postImage // ignore: cast_nullable_to_non_nullable
              as File?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      contents: contents == freezed
          ? _value.contents
          : contents // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TextPostStatus,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ));
  }
}

/// @nodoc

class _$_TextPostState implements _TextPostState {
  const _$_TextPostState(
      {required this.postImage,
      required this.title,
      required this.contents,
      required this.status,
      required this.failure});

  @override
  final File? postImage;
  @override
  final String title;
  @override
  final String contents;
  @override
  final TextPostStatus status;
  @override
  final Exception? failure;

  @override
  String toString() {
    return 'TextPostState(postImage: $postImage, title: $title, contents: $contents, status: $status, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TextPostState &&
            const DeepCollectionEquality().equals(other.postImage, postImage) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.contents, contents) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(postImage),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(contents),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$$_TextPostStateCopyWith<_$_TextPostState> get copyWith =>
      __$$_TextPostStateCopyWithImpl<_$_TextPostState>(this, _$identity);
}

abstract class _TextPostState implements TextPostState {
  const factory _TextPostState(
      {required final File? postImage,
      required final String title,
      required final String contents,
      required final TextPostStatus status,
      required final Exception? failure}) = _$_TextPostState;

  @override
  File? get postImage;
  @override
  String get title;
  @override
  String get contents;
  @override
  TextPostStatus get status;
  @override
  Exception? get failure;
  @override
  @JsonKey(ignore: true)
  _$$_TextPostStateCopyWith<_$_TextPostState> get copyWith =>
      throw _privateConstructorUsedError;
}
