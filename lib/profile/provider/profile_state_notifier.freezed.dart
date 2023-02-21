// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_state_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileState {
  User? get user => throw _privateConstructorUsedError;
  List<Post> get post => throw _privateConstructorUsedError;
  List<ReImagined> get reImagined => throw _privateConstructorUsedError;
  bool get isCurrentUser => throw _privateConstructorUsedError;
  bool get isFollowing => throw _privateConstructorUsedError;
  ProfileStatus get status => throw _privateConstructorUsedError;
  Exception? get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileStateCopyWith<ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
  @useResult
  $Res call(
      {User? user,
      List<Post> post,
      List<ReImagined> reImagined,
      bool isCurrentUser,
      bool isFollowing,
      ProfileStatus status,
      Exception? failure});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? post = null,
    Object? reImagined = null,
    Object? isCurrentUser = null,
    Object? isFollowing = null,
    Object? status = null,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      post: null == post
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as List<Post>,
      reImagined: null == reImagined
          ? _value.reImagined
          : reImagined // ignore: cast_nullable_to_non_nullable
              as List<ReImagined>,
      isCurrentUser: null == isCurrentUser
          ? _value.isCurrentUser
          : isCurrentUser // ignore: cast_nullable_to_non_nullable
              as bool,
      isFollowing: null == isFollowing
          ? _value.isFollowing
          : isFollowing // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProfileStatus,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProfileStateCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$$_ProfileStateCopyWith(
          _$_ProfileState value, $Res Function(_$_ProfileState) then) =
      __$$_ProfileStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {User? user,
      List<Post> post,
      List<ReImagined> reImagined,
      bool isCurrentUser,
      bool isFollowing,
      ProfileStatus status,
      Exception? failure});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_ProfileStateCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$_ProfileState>
    implements _$$_ProfileStateCopyWith<$Res> {
  __$$_ProfileStateCopyWithImpl(
      _$_ProfileState _value, $Res Function(_$_ProfileState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? post = null,
    Object? reImagined = null,
    Object? isCurrentUser = null,
    Object? isFollowing = null,
    Object? status = null,
    Object? failure = freezed,
  }) {
    return _then(_$_ProfileState(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      post: null == post
          ? _value._post
          : post // ignore: cast_nullable_to_non_nullable
              as List<Post>,
      reImagined: null == reImagined
          ? _value._reImagined
          : reImagined // ignore: cast_nullable_to_non_nullable
              as List<ReImagined>,
      isCurrentUser: null == isCurrentUser
          ? _value.isCurrentUser
          : isCurrentUser // ignore: cast_nullable_to_non_nullable
              as bool,
      isFollowing: null == isFollowing
          ? _value.isFollowing
          : isFollowing // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProfileStatus,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ));
  }
}

/// @nodoc

class _$_ProfileState implements _ProfileState {
  const _$_ProfileState(
      {required this.user,
      required final List<Post> post,
      required final List<ReImagined> reImagined,
      required this.isCurrentUser,
      required this.isFollowing,
      required this.status,
      required this.failure})
      : _post = post,
        _reImagined = reImagined;

  @override
  final User? user;
  final List<Post> _post;
  @override
  List<Post> get post {
    if (_post is EqualUnmodifiableListView) return _post;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_post);
  }

  final List<ReImagined> _reImagined;
  @override
  List<ReImagined> get reImagined {
    if (_reImagined is EqualUnmodifiableListView) return _reImagined;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reImagined);
  }

  @override
  final bool isCurrentUser;
  @override
  final bool isFollowing;
  @override
  final ProfileStatus status;
  @override
  final Exception? failure;

  @override
  String toString() {
    return 'ProfileState(user: $user, post: $post, reImagined: $reImagined, isCurrentUser: $isCurrentUser, isFollowing: $isFollowing, status: $status, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileState &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality().equals(other._post, _post) &&
            const DeepCollectionEquality()
                .equals(other._reImagined, _reImagined) &&
            (identical(other.isCurrentUser, isCurrentUser) ||
                other.isCurrentUser == isCurrentUser) &&
            (identical(other.isFollowing, isFollowing) ||
                other.isFollowing == isFollowing) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      user,
      const DeepCollectionEquality().hash(_post),
      const DeepCollectionEquality().hash(_reImagined),
      isCurrentUser,
      isFollowing,
      status,
      failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileStateCopyWith<_$_ProfileState> get copyWith =>
      __$$_ProfileStateCopyWithImpl<_$_ProfileState>(this, _$identity);
}

abstract class _ProfileState implements ProfileState {
  const factory _ProfileState(
      {required final User? user,
      required final List<Post> post,
      required final List<ReImagined> reImagined,
      required final bool isCurrentUser,
      required final bool isFollowing,
      required final ProfileStatus status,
      required final Exception? failure}) = _$_ProfileState;

  @override
  User? get user;
  @override
  List<Post> get post;
  @override
  List<ReImagined> get reImagined;
  @override
  bool get isCurrentUser;
  @override
  bool get isFollowing;
  @override
  ProfileStatus get status;
  @override
  Exception? get failure;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileStateCopyWith<_$_ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}
