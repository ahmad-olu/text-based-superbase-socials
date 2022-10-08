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
  Set<String> get likedTextPostIds => throw _privateConstructorUsedError;
  Set<String> get recentlyLikedTextPostIds =>
      throw _privateConstructorUsedError;
  Set<String> get likedComicPostIds => throw _privateConstructorUsedError;
  Set<String> get recentlyLikedComicPostIds =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LikedPostStateCopyWith<LikedPostState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LikedPostStateCopyWith<$Res> {
  factory $LikedPostStateCopyWith(
          LikedPostState value, $Res Function(LikedPostState) then) =
      _$LikedPostStateCopyWithImpl<$Res>;
  $Res call(
      {Set<String> likedTextPostIds,
      Set<String> recentlyLikedTextPostIds,
      Set<String> likedComicPostIds,
      Set<String> recentlyLikedComicPostIds});
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
    Object? likedTextPostIds = freezed,
    Object? recentlyLikedTextPostIds = freezed,
    Object? likedComicPostIds = freezed,
    Object? recentlyLikedComicPostIds = freezed,
  }) {
    return _then(_value.copyWith(
      likedTextPostIds: likedTextPostIds == freezed
          ? _value.likedTextPostIds
          : likedTextPostIds // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      recentlyLikedTextPostIds: recentlyLikedTextPostIds == freezed
          ? _value.recentlyLikedTextPostIds
          : recentlyLikedTextPostIds // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      likedComicPostIds: likedComicPostIds == freezed
          ? _value.likedComicPostIds
          : likedComicPostIds // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      recentlyLikedComicPostIds: recentlyLikedComicPostIds == freezed
          ? _value.recentlyLikedComicPostIds
          : recentlyLikedComicPostIds // ignore: cast_nullable_to_non_nullable
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
  $Res call(
      {Set<String> likedTextPostIds,
      Set<String> recentlyLikedTextPostIds,
      Set<String> likedComicPostIds,
      Set<String> recentlyLikedComicPostIds});
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
    Object? likedTextPostIds = freezed,
    Object? recentlyLikedTextPostIds = freezed,
    Object? likedComicPostIds = freezed,
    Object? recentlyLikedComicPostIds = freezed,
  }) {
    return _then(_$_LikedPostState(
      likedTextPostIds: likedTextPostIds == freezed
          ? _value._likedTextPostIds
          : likedTextPostIds // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      recentlyLikedTextPostIds: recentlyLikedTextPostIds == freezed
          ? _value._recentlyLikedTextPostIds
          : recentlyLikedTextPostIds // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      likedComicPostIds: likedComicPostIds == freezed
          ? _value._likedComicPostIds
          : likedComicPostIds // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      recentlyLikedComicPostIds: recentlyLikedComicPostIds == freezed
          ? _value._recentlyLikedComicPostIds
          : recentlyLikedComicPostIds // ignore: cast_nullable_to_non_nullable
              as Set<String>,
    ));
  }
}

/// @nodoc

class _$_LikedPostState implements _LikedPostState {
  const _$_LikedPostState(
      {required final Set<String> likedTextPostIds,
      required final Set<String> recentlyLikedTextPostIds,
      required final Set<String> likedComicPostIds,
      required final Set<String> recentlyLikedComicPostIds})
      : _likedTextPostIds = likedTextPostIds,
        _recentlyLikedTextPostIds = recentlyLikedTextPostIds,
        _likedComicPostIds = likedComicPostIds,
        _recentlyLikedComicPostIds = recentlyLikedComicPostIds;

  final Set<String> _likedTextPostIds;
  @override
  Set<String> get likedTextPostIds {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_likedTextPostIds);
  }

  final Set<String> _recentlyLikedTextPostIds;
  @override
  Set<String> get recentlyLikedTextPostIds {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_recentlyLikedTextPostIds);
  }

  final Set<String> _likedComicPostIds;
  @override
  Set<String> get likedComicPostIds {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_likedComicPostIds);
  }

  final Set<String> _recentlyLikedComicPostIds;
  @override
  Set<String> get recentlyLikedComicPostIds {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_recentlyLikedComicPostIds);
  }

  @override
  String toString() {
    return 'LikedPostState(likedTextPostIds: $likedTextPostIds, recentlyLikedTextPostIds: $recentlyLikedTextPostIds, likedComicPostIds: $likedComicPostIds, recentlyLikedComicPostIds: $recentlyLikedComicPostIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LikedPostState &&
            const DeepCollectionEquality()
                .equals(other._likedTextPostIds, _likedTextPostIds) &&
            const DeepCollectionEquality().equals(
                other._recentlyLikedTextPostIds, _recentlyLikedTextPostIds) &&
            const DeepCollectionEquality()
                .equals(other._likedComicPostIds, _likedComicPostIds) &&
            const DeepCollectionEquality().equals(
                other._recentlyLikedComicPostIds, _recentlyLikedComicPostIds));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_likedTextPostIds),
      const DeepCollectionEquality().hash(_recentlyLikedTextPostIds),
      const DeepCollectionEquality().hash(_likedComicPostIds),
      const DeepCollectionEquality().hash(_recentlyLikedComicPostIds));

  @JsonKey(ignore: true)
  @override
  _$$_LikedPostStateCopyWith<_$_LikedPostState> get copyWith =>
      __$$_LikedPostStateCopyWithImpl<_$_LikedPostState>(this, _$identity);
}

abstract class _LikedPostState implements LikedPostState {
  const factory _LikedPostState(
          {required final Set<String> likedTextPostIds,
          required final Set<String> recentlyLikedTextPostIds,
          required final Set<String> likedComicPostIds,
          required final Set<String> recentlyLikedComicPostIds}) =
      _$_LikedPostState;

  @override
  Set<String> get likedTextPostIds;
  @override
  Set<String> get recentlyLikedTextPostIds;
  @override
  Set<String> get likedComicPostIds;
  @override
  Set<String> get recentlyLikedComicPostIds;
  @override
  @JsonKey(ignore: true)
  _$$_LikedPostStateCopyWith<_$_LikedPostState> get copyWith =>
      throw _privateConstructorUsedError;
}
