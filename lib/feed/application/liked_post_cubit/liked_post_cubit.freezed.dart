// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'liked_post_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LikedPostState {
  Set<String> get likedPostIds => throw _privateConstructorUsedError;
  Set<String> get recentlyLikedPostIds => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LikedPostStateCopyWith<LikedPostState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LikedPostStateCopyWith<$Res> {
  factory $LikedPostStateCopyWith(
          LikedPostState value, $Res Function(LikedPostState) then) =
      _$LikedPostStateCopyWithImpl<$Res>;
  $Res call({Set<String> likedPostIds, Set<String> recentlyLikedPostIds});
}

/// @nodoc
class _$LikedPostStateCopyWithImpl<$Res>
    implements $LikedPostStateCopyWith<$Res> {
  _$LikedPostStateCopyWithImpl(this._value, this._then);

  final LikedPostState _value;
  // ignore: unused_field
  final $Res Function(LikedPostState) _then;

  @override
  $Res call({
    Object? likedPostIds = freezed,
    Object? recentlyLikedPostIds = freezed,
  }) {
    return _then(_value.copyWith(
      likedPostIds: likedPostIds == freezed
          ? _value.likedPostIds
          : likedPostIds // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      recentlyLikedPostIds: recentlyLikedPostIds == freezed
          ? _value.recentlyLikedPostIds
          : recentlyLikedPostIds // ignore: cast_nullable_to_non_nullable
              as Set<String>,
    ));
  }
}

/// @nodoc
abstract class _$$_LikedPostStateCopyWith<$Res>
    implements $LikedPostStateCopyWith<$Res> {
  factory _$$_LikedPostStateCopyWith(
          _$_LikedPostState value, $Res Function(_$_LikedPostState) then) =
      __$$_LikedPostStateCopyWithImpl<$Res>;
  @override
  $Res call({Set<String> likedPostIds, Set<String> recentlyLikedPostIds});
}

/// @nodoc
class __$$_LikedPostStateCopyWithImpl<$Res>
    extends _$LikedPostStateCopyWithImpl<$Res>
    implements _$$_LikedPostStateCopyWith<$Res> {
  __$$_LikedPostStateCopyWithImpl(
      _$_LikedPostState _value, $Res Function(_$_LikedPostState) _then)
      : super(_value, (v) => _then(v as _$_LikedPostState));

  @override
  _$_LikedPostState get _value => super._value as _$_LikedPostState;

  @override
  $Res call({
    Object? likedPostIds = freezed,
    Object? recentlyLikedPostIds = freezed,
  }) {
    return _then(_$_LikedPostState(
      likedPostIds: likedPostIds == freezed
          ? _value._likedPostIds
          : likedPostIds // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      recentlyLikedPostIds: recentlyLikedPostIds == freezed
          ? _value._recentlyLikedPostIds
          : recentlyLikedPostIds // ignore: cast_nullable_to_non_nullable
              as Set<String>,
    ));
  }
}

/// @nodoc

class _$_LikedPostState implements _LikedPostState {
  const _$_LikedPostState(
      {required final Set<String> likedPostIds,
      required final Set<String> recentlyLikedPostIds})
      : _likedPostIds = likedPostIds,
        _recentlyLikedPostIds = recentlyLikedPostIds;

  final Set<String> _likedPostIds;
  @override
  Set<String> get likedPostIds {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_likedPostIds);
  }

  final Set<String> _recentlyLikedPostIds;
  @override
  Set<String> get recentlyLikedPostIds {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_recentlyLikedPostIds);
  }

  @override
  String toString() {
    return 'LikedPostState(likedPostIds: $likedPostIds, recentlyLikedPostIds: $recentlyLikedPostIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LikedPostState &&
            const DeepCollectionEquality()
                .equals(other._likedPostIds, _likedPostIds) &&
            const DeepCollectionEquality()
                .equals(other._recentlyLikedPostIds, _recentlyLikedPostIds));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_likedPostIds),
      const DeepCollectionEquality().hash(_recentlyLikedPostIds));

  @JsonKey(ignore: true)
  @override
  _$$_LikedPostStateCopyWith<_$_LikedPostState> get copyWith =>
      __$$_LikedPostStateCopyWithImpl<_$_LikedPostState>(this, _$identity);
}

abstract class _LikedPostState implements LikedPostState {
  const factory _LikedPostState(
      {required final Set<String> likedPostIds,
      required final Set<String> recentlyLikedPostIds}) = _$_LikedPostState;

  @override
  Set<String> get likedPostIds;
  @override
  Set<String> get recentlyLikedPostIds;
  @override
  @JsonKey(ignore: true)
  _$$_LikedPostStateCopyWith<_$_LikedPostState> get copyWith =>
      throw _privateConstructorUsedError;
}
