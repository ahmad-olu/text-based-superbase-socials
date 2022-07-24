// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'picture_post_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreatePicturePostState {
  List<File?>? get postImages => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  CreatePicturePostStatus get status => throw _privateConstructorUsedError;
  GeatFailure get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreatePicturePostStateCopyWith<CreatePicturePostState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatePicturePostStateCopyWith<$Res> {
  factory $CreatePicturePostStateCopyWith(CreatePicturePostState value,
          $Res Function(CreatePicturePostState) then) =
      _$CreatePicturePostStateCopyWithImpl<$Res>;
  $Res call(
      {List<File?>? postImages,
      String title,
      CreatePicturePostStatus status,
      GeatFailure failure});

  $GeatFailureCopyWith<$Res> get failure;
}

/// @nodoc
class _$CreatePicturePostStateCopyWithImpl<$Res>
    implements $CreatePicturePostStateCopyWith<$Res> {
  _$CreatePicturePostStateCopyWithImpl(this._value, this._then);

  final CreatePicturePostState _value;
  // ignore: unused_field
  final $Res Function(CreatePicturePostState) _then;

  @override
  $Res call({
    Object? postImages = freezed,
    Object? title = freezed,
    Object? status = freezed,
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
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CreatePicturePostStatus,
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
abstract class _$$_CreatePicturePostStateCopyWith<$Res>
    implements $CreatePicturePostStateCopyWith<$Res> {
  factory _$$_CreatePicturePostStateCopyWith(_$_CreatePicturePostState value,
          $Res Function(_$_CreatePicturePostState) then) =
      __$$_CreatePicturePostStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<File?>? postImages,
      String title,
      CreatePicturePostStatus status,
      GeatFailure failure});

  @override
  $GeatFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_CreatePicturePostStateCopyWithImpl<$Res>
    extends _$CreatePicturePostStateCopyWithImpl<$Res>
    implements _$$_CreatePicturePostStateCopyWith<$Res> {
  __$$_CreatePicturePostStateCopyWithImpl(_$_CreatePicturePostState _value,
      $Res Function(_$_CreatePicturePostState) _then)
      : super(_value, (v) => _then(v as _$_CreatePicturePostState));

  @override
  _$_CreatePicturePostState get _value =>
      super._value as _$_CreatePicturePostState;

  @override
  $Res call({
    Object? postImages = freezed,
    Object? title = freezed,
    Object? status = freezed,
    Object? failure = freezed,
  }) {
    return _then(_$_CreatePicturePostState(
      postImages: postImages == freezed
          ? _value._postImages
          : postImages // ignore: cast_nullable_to_non_nullable
              as List<File?>?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CreatePicturePostStatus,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as GeatFailure,
    ));
  }
}

/// @nodoc

class _$_CreatePicturePostState implements _CreatePicturePostState {
  const _$_CreatePicturePostState(
      {required final List<File?>? postImages,
      required this.title,
      required this.status,
      required this.failure})
      : _postImages = postImages;

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
  final CreatePicturePostStatus status;
  @override
  final GeatFailure failure;

  @override
  String toString() {
    return 'CreatePicturePostState(postImages: $postImages, title: $title, status: $status, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreatePicturePostState &&
            const DeepCollectionEquality()
                .equals(other._postImages, _postImages) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_postImages),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$$_CreatePicturePostStateCopyWith<_$_CreatePicturePostState> get copyWith =>
      __$$_CreatePicturePostStateCopyWithImpl<_$_CreatePicturePostState>(
          this, _$identity);
}

abstract class _CreatePicturePostState implements CreatePicturePostState {
  const factory _CreatePicturePostState(
      {required final List<File?>? postImages,
      required final String title,
      required final CreatePicturePostStatus status,
      required final GeatFailure failure}) = _$_CreatePicturePostState;

  @override
  List<File?>? get postImages => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  CreatePicturePostStatus get status => throw _privateConstructorUsedError;
  @override
  GeatFailure get failure => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CreatePicturePostStateCopyWith<_$_CreatePicturePostState> get copyWith =>
      throw _privateConstructorUsedError;
}
