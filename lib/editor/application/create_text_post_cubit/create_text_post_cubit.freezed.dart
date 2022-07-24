// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'create_text_post_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreateTextPostState {
  File get postImage => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get contents => throw _privateConstructorUsedError;
  CreateTextPostStatus get status => throw _privateConstructorUsedError;
  GeatFailure get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateTextPostStateCopyWith<CreateTextPostState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateTextPostStateCopyWith<$Res> {
  factory $CreateTextPostStateCopyWith(
          CreateTextPostState value, $Res Function(CreateTextPostState) then) =
      _$CreateTextPostStateCopyWithImpl<$Res>;
  $Res call(
      {File postImage,
      String title,
      String contents,
      CreateTextPostStatus status,
      GeatFailure failure});

  $GeatFailureCopyWith<$Res> get failure;
}

/// @nodoc
class _$CreateTextPostStateCopyWithImpl<$Res>
    implements $CreateTextPostStateCopyWith<$Res> {
  _$CreateTextPostStateCopyWithImpl(this._value, this._then);

  final CreateTextPostState _value;
  // ignore: unused_field
  final $Res Function(CreateTextPostState) _then;

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
              as File,
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
              as CreateTextPostStatus,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as GeatFailure,
    ));
  }

  @override
  $GeatFailureCopyWith<$Res> get failure {
    return $GeatFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
abstract class _$$_CreateTextPostStateCopyWith<$Res>
    implements $CreateTextPostStateCopyWith<$Res> {
  factory _$$_CreateTextPostStateCopyWith(_$_CreateTextPostState value,
          $Res Function(_$_CreateTextPostState) then) =
      __$$_CreateTextPostStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {File postImage,
      String title,
      String contents,
      CreateTextPostStatus status,
      GeatFailure failure});

  @override
  $GeatFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_CreateTextPostStateCopyWithImpl<$Res>
    extends _$CreateTextPostStateCopyWithImpl<$Res>
    implements _$$_CreateTextPostStateCopyWith<$Res> {
  __$$_CreateTextPostStateCopyWithImpl(_$_CreateTextPostState _value,
      $Res Function(_$_CreateTextPostState) _then)
      : super(_value, (v) => _then(v as _$_CreateTextPostState));

  @override
  _$_CreateTextPostState get _value => super._value as _$_CreateTextPostState;

  @override
  $Res call({
    Object? postImage = freezed,
    Object? title = freezed,
    Object? contents = freezed,
    Object? status = freezed,
    Object? failure = freezed,
  }) {
    return _then(_$_CreateTextPostState(
      postImage: postImage == freezed
          ? _value.postImage
          : postImage // ignore: cast_nullable_to_non_nullable
              as File,
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
              as CreateTextPostStatus,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as GeatFailure,
    ));
  }
}

/// @nodoc

class _$_CreateTextPostState implements _CreateTextPostState {
  const _$_CreateTextPostState(
      {required this.postImage,
      required this.title,
      required this.contents,
      required this.status,
      required this.failure});

  @override
  final File postImage;
  @override
  final String title;
  @override
  final String contents;
  @override
  final CreateTextPostStatus status;
  @override
  final GeatFailure failure;

  @override
  String toString() {
    return 'CreateTextPostState(postImage: $postImage, title: $title, contents: $contents, status: $status, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateTextPostState &&
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
  _$$_CreateTextPostStateCopyWith<_$_CreateTextPostState> get copyWith =>
      __$$_CreateTextPostStateCopyWithImpl<_$_CreateTextPostState>(
          this, _$identity);
}

abstract class _CreateTextPostState implements CreateTextPostState {
  const factory _CreateTextPostState(
      {required final File postImage,
      required final String title,
      required final String contents,
      required final CreateTextPostStatus status,
      required final GeatFailure failure}) = _$_CreateTextPostState;

  @override
  File get postImage => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get contents => throw _privateConstructorUsedError;
  @override
  CreateTextPostStatus get status => throw _privateConstructorUsedError;
  @override
  GeatFailure get failure => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CreateTextPostStateCopyWith<_$_CreateTextPostState> get copyWith =>
      throw _privateConstructorUsedError;
}
