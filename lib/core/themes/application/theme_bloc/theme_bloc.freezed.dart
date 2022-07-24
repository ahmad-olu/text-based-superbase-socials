// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'theme_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ThemeEvent {
  AppTheme get theme => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppTheme theme) themeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AppTheme theme)? themeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppTheme theme)? themeChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ThemeChanged value) themeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ThemeChanged value)? themeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ThemeChanged value)? themeChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ThemeEventCopyWith<ThemeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeEventCopyWith<$Res> {
  factory $ThemeEventCopyWith(
          ThemeEvent value, $Res Function(ThemeEvent) then) =
      _$ThemeEventCopyWithImpl<$Res>;
  $Res call({AppTheme theme});
}

/// @nodoc
class _$ThemeEventCopyWithImpl<$Res> implements $ThemeEventCopyWith<$Res> {
  _$ThemeEventCopyWithImpl(this._value, this._then);

  final ThemeEvent _value;
  // ignore: unused_field
  final $Res Function(ThemeEvent) _then;

  @override
  $Res call({
    Object? theme = freezed,
  }) {
    return _then(_value.copyWith(
      theme: theme == freezed
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as AppTheme,
    ));
  }
}

/// @nodoc
abstract class _$$_ThemeChangedCopyWith<$Res>
    implements $ThemeEventCopyWith<$Res> {
  factory _$$_ThemeChangedCopyWith(
          _$_ThemeChanged value, $Res Function(_$_ThemeChanged) then) =
      __$$_ThemeChangedCopyWithImpl<$Res>;
  @override
  $Res call({AppTheme theme});
}

/// @nodoc
class __$$_ThemeChangedCopyWithImpl<$Res> extends _$ThemeEventCopyWithImpl<$Res>
    implements _$$_ThemeChangedCopyWith<$Res> {
  __$$_ThemeChangedCopyWithImpl(
      _$_ThemeChanged _value, $Res Function(_$_ThemeChanged) _then)
      : super(_value, (v) => _then(v as _$_ThemeChanged));

  @override
  _$_ThemeChanged get _value => super._value as _$_ThemeChanged;

  @override
  $Res call({
    Object? theme = freezed,
  }) {
    return _then(_$_ThemeChanged(
      theme == freezed
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as AppTheme,
    ));
  }
}

/// @nodoc

class _$_ThemeChanged implements _ThemeChanged {
  const _$_ThemeChanged(this.theme);

  @override
  final AppTheme theme;

  @override
  String toString() {
    return 'ThemeEvent.themeChanged(theme: $theme)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ThemeChanged &&
            const DeepCollectionEquality().equals(other.theme, theme));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(theme));

  @JsonKey(ignore: true)
  @override
  _$$_ThemeChangedCopyWith<_$_ThemeChanged> get copyWith =>
      __$$_ThemeChangedCopyWithImpl<_$_ThemeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppTheme theme) themeChanged,
  }) {
    return themeChanged(theme);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(AppTheme theme)? themeChanged,
  }) {
    return themeChanged?.call(theme);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppTheme theme)? themeChanged,
    required TResult orElse(),
  }) {
    if (themeChanged != null) {
      return themeChanged(theme);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ThemeChanged value) themeChanged,
  }) {
    return themeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ThemeChanged value)? themeChanged,
  }) {
    return themeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ThemeChanged value)? themeChanged,
    required TResult orElse(),
  }) {
    if (themeChanged != null) {
      return themeChanged(this);
    }
    return orElse();
  }
}

abstract class _ThemeChanged implements ThemeEvent {
  const factory _ThemeChanged(final AppTheme theme) = _$_ThemeChanged;

  @override
  AppTheme get theme => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ThemeChangedCopyWith<_$_ThemeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ThemeState {
  ThemeData get themeData => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ThemeStateCopyWith<ThemeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeStateCopyWith<$Res> {
  factory $ThemeStateCopyWith(
          ThemeState value, $Res Function(ThemeState) then) =
      _$ThemeStateCopyWithImpl<$Res>;
  $Res call({ThemeData themeData});
}

/// @nodoc
class _$ThemeStateCopyWithImpl<$Res> implements $ThemeStateCopyWith<$Res> {
  _$ThemeStateCopyWithImpl(this._value, this._then);

  final ThemeState _value;
  // ignore: unused_field
  final $Res Function(ThemeState) _then;

  @override
  $Res call({
    Object? themeData = freezed,
  }) {
    return _then(_value.copyWith(
      themeData: themeData == freezed
          ? _value.themeData
          : themeData // ignore: cast_nullable_to_non_nullable
              as ThemeData,
    ));
  }
}

/// @nodoc
abstract class _$$_ThemeStateCopyWith<$Res>
    implements $ThemeStateCopyWith<$Res> {
  factory _$$_ThemeStateCopyWith(
          _$_ThemeState value, $Res Function(_$_ThemeState) then) =
      __$$_ThemeStateCopyWithImpl<$Res>;
  @override
  $Res call({ThemeData themeData});
}

/// @nodoc
class __$$_ThemeStateCopyWithImpl<$Res> extends _$ThemeStateCopyWithImpl<$Res>
    implements _$$_ThemeStateCopyWith<$Res> {
  __$$_ThemeStateCopyWithImpl(
      _$_ThemeState _value, $Res Function(_$_ThemeState) _then)
      : super(_value, (v) => _then(v as _$_ThemeState));

  @override
  _$_ThemeState get _value => super._value as _$_ThemeState;

  @override
  $Res call({
    Object? themeData = freezed,
  }) {
    return _then(_$_ThemeState(
      themeData: themeData == freezed
          ? _value.themeData
          : themeData // ignore: cast_nullable_to_non_nullable
              as ThemeData,
    ));
  }
}

/// @nodoc

class _$_ThemeState implements _ThemeState {
  const _$_ThemeState({required this.themeData});

  @override
  final ThemeData themeData;

  @override
  String toString() {
    return 'ThemeState(themeData: $themeData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ThemeState &&
            const DeepCollectionEquality().equals(other.themeData, themeData));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(themeData));

  @JsonKey(ignore: true)
  @override
  _$$_ThemeStateCopyWith<_$_ThemeState> get copyWith =>
      __$$_ThemeStateCopyWithImpl<_$_ThemeState>(this, _$identity);
}

abstract class _ThemeState implements ThemeState {
  const factory _ThemeState({required final ThemeData themeData}) =
      _$_ThemeState;

  @override
  ThemeData get themeData => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ThemeStateCopyWith<_$_ThemeState> get copyWith =>
      throw _privateConstructorUsedError;
}
