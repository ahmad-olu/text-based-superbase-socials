// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'edit_profile_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EditProfileState {
  File? get profileImage => throw _privateConstructorUsedError;
  Bio get bio => throw _privateConstructorUsedError;
  Website get website => throw _privateConstructorUsedError;
  EditProfileStatus get status => throw _privateConstructorUsedError;
  GeatFailure get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditProfileStateCopyWith<EditProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditProfileStateCopyWith<$Res> {
  factory $EditProfileStateCopyWith(
          EditProfileState value, $Res Function(EditProfileState) then) =
      _$EditProfileStateCopyWithImpl<$Res>;
  $Res call(
      {File? profileImage,
      Bio bio,
      Website website,
      EditProfileStatus status,
      GeatFailure failure});

  $GeatFailureCopyWith<$Res> get failure;
}

/// @nodoc
class _$EditProfileStateCopyWithImpl<$Res>
    implements $EditProfileStateCopyWith<$Res> {
  _$EditProfileStateCopyWithImpl(this._value, this._then);

  final EditProfileState _value;
  // ignore: unused_field
  final $Res Function(EditProfileState) _then;

  @override
  $Res call({
    Object? profileImage = freezed,
    Object? bio = freezed,
    Object? website = freezed,
    Object? status = freezed,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      profileImage: profileImage == freezed
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as File?,
      bio: bio == freezed
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as Bio,
      website: website == freezed
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as Website,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as EditProfileStatus,
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
abstract class _$$_EditProfileStateCopyWith<$Res>
    implements $EditProfileStateCopyWith<$Res> {
  factory _$$_EditProfileStateCopyWith(
          _$_EditProfileState value, $Res Function(_$_EditProfileState) then) =
      __$$_EditProfileStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {File? profileImage,
      Bio bio,
      Website website,
      EditProfileStatus status,
      GeatFailure failure});

  @override
  $GeatFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_EditProfileStateCopyWithImpl<$Res>
    extends _$EditProfileStateCopyWithImpl<$Res>
    implements _$$_EditProfileStateCopyWith<$Res> {
  __$$_EditProfileStateCopyWithImpl(
      _$_EditProfileState _value, $Res Function(_$_EditProfileState) _then)
      : super(_value, (v) => _then(v as _$_EditProfileState));

  @override
  _$_EditProfileState get _value => super._value as _$_EditProfileState;

  @override
  $Res call({
    Object? profileImage = freezed,
    Object? bio = freezed,
    Object? website = freezed,
    Object? status = freezed,
    Object? failure = freezed,
  }) {
    return _then(_$_EditProfileState(
      profileImage: profileImage == freezed
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as File?,
      bio: bio == freezed
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as Bio,
      website: website == freezed
          ? _value.website
          : website // ignore: cast_nullable_to_non_nullable
              as Website,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as EditProfileStatus,
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as GeatFailure,
    ));
  }
}

/// @nodoc

class _$_EditProfileState implements _EditProfileState {
  const _$_EditProfileState(
      {required this.profileImage,
      required this.bio,
      required this.website,
      required this.status,
      required this.failure});

  @override
  final File? profileImage;
  @override
  final Bio bio;
  @override
  final Website website;
  @override
  final EditProfileStatus status;
  @override
  final GeatFailure failure;

  @override
  String toString() {
    return 'EditProfileState(profileImage: $profileImage, bio: $bio, website: $website, status: $status, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditProfileState &&
            const DeepCollectionEquality()
                .equals(other.profileImage, profileImage) &&
            const DeepCollectionEquality().equals(other.bio, bio) &&
            const DeepCollectionEquality().equals(other.website, website) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(profileImage),
      const DeepCollectionEquality().hash(bio),
      const DeepCollectionEquality().hash(website),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$$_EditProfileStateCopyWith<_$_EditProfileState> get copyWith =>
      __$$_EditProfileStateCopyWithImpl<_$_EditProfileState>(this, _$identity);
}

abstract class _EditProfileState implements EditProfileState {
  const factory _EditProfileState(
      {required final File? profileImage,
      required final Bio bio,
      required final Website website,
      required final EditProfileStatus status,
      required final GeatFailure failure}) = _$_EditProfileState;

  @override
  File? get profileImage => throw _privateConstructorUsedError;
  @override
  Bio get bio => throw _privateConstructorUsedError;
  @override
  Website get website => throw _privateConstructorUsedError;
  @override
  EditProfileStatus get status => throw _privateConstructorUsedError;
  @override
  GeatFailure get failure => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_EditProfileStateCopyWith<_$_EditProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}
