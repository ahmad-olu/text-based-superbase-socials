// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'editors_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EditorModel {
  String? get insert => throw _privateConstructorUsedError;
  Attributes? get attributes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditorModelCopyWith<EditorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditorModelCopyWith<$Res> {
  factory $EditorModelCopyWith(
          EditorModel value, $Res Function(EditorModel) then) =
      _$EditorModelCopyWithImpl<$Res>;
  $Res call({String? insert, Attributes? attributes});

  $AttributesCopyWith<$Res>? get attributes;
}

/// @nodoc
class _$EditorModelCopyWithImpl<$Res> implements $EditorModelCopyWith<$Res> {
  _$EditorModelCopyWithImpl(this._value, this._then);

  final EditorModel _value;
  // ignore: unused_field
  final $Res Function(EditorModel) _then;

  @override
  $Res call({
    Object? insert = freezed,
    Object? attributes = freezed,
  }) {
    return _then(_value.copyWith(
      insert: insert == freezed
          ? _value.insert
          : insert // ignore: cast_nullable_to_non_nullable
              as String?,
      attributes: attributes == freezed
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Attributes?,
    ));
  }

  @override
  $AttributesCopyWith<$Res>? get attributes {
    if (_value.attributes == null) {
      return null;
    }

    return $AttributesCopyWith<$Res>(_value.attributes!, (value) {
      return _then(_value.copyWith(attributes: value));
    });
  }
}

/// @nodoc
abstract class _$$_EditorModelCopyWith<$Res>
    implements $EditorModelCopyWith<$Res> {
  factory _$$_EditorModelCopyWith(
          _$_EditorModel value, $Res Function(_$_EditorModel) then) =
      __$$_EditorModelCopyWithImpl<$Res>;
  @override
  $Res call({String? insert, Attributes? attributes});

  @override
  $AttributesCopyWith<$Res>? get attributes;
}

/// @nodoc
class __$$_EditorModelCopyWithImpl<$Res> extends _$EditorModelCopyWithImpl<$Res>
    implements _$$_EditorModelCopyWith<$Res> {
  __$$_EditorModelCopyWithImpl(
      _$_EditorModel _value, $Res Function(_$_EditorModel) _then)
      : super(_value, (v) => _then(v as _$_EditorModel));

  @override
  _$_EditorModel get _value => super._value as _$_EditorModel;

  @override
  $Res call({
    Object? insert = freezed,
    Object? attributes = freezed,
  }) {
    return _then(_$_EditorModel(
      insert: insert == freezed
          ? _value.insert
          : insert // ignore: cast_nullable_to_non_nullable
              as String?,
      attributes: attributes == freezed
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Attributes?,
    ));
  }
}

/// @nodoc

class _$_EditorModel extends _EditorModel {
  const _$_EditorModel({this.insert, this.attributes}) : super._();

  @override
  final String? insert;
  @override
  final Attributes? attributes;

  @override
  String toString() {
    return 'EditorModel(insert: $insert, attributes: $attributes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditorModel &&
            const DeepCollectionEquality().equals(other.insert, insert) &&
            const DeepCollectionEquality()
                .equals(other.attributes, attributes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(insert),
      const DeepCollectionEquality().hash(attributes));

  @JsonKey(ignore: true)
  @override
  _$$_EditorModelCopyWith<_$_EditorModel> get copyWith =>
      __$$_EditorModelCopyWithImpl<_$_EditorModel>(this, _$identity);
}

abstract class _EditorModel extends EditorModel {
  const factory _EditorModel(
      {final String? insert, final Attributes? attributes}) = _$_EditorModel;
  const _EditorModel._() : super._();

  @override
  String? get insert => throw _privateConstructorUsedError;
  @override
  Attributes? get attributes => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_EditorModelCopyWith<_$_EditorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Attributes {
  int? get header => throw _privateConstructorUsedError;
  bool? get bold => throw _privateConstructorUsedError;
  bool? get italic => throw _privateConstructorUsedError;
  bool? get underline => throw _privateConstructorUsedError;
  bool? get strike => throw _privateConstructorUsedError;
  bool? get code => throw _privateConstructorUsedError;
  bool? get blockquote => throw _privateConstructorUsedError;
  String? get align => throw _privateConstructorUsedError;
  bool? get codeBlock => throw _privateConstructorUsedError;
  String? get list => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AttributesCopyWith<Attributes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttributesCopyWith<$Res> {
  factory $AttributesCopyWith(
          Attributes value, $Res Function(Attributes) then) =
      _$AttributesCopyWithImpl<$Res>;
  $Res call(
      {int? header,
      bool? bold,
      bool? italic,
      bool? underline,
      bool? strike,
      bool? code,
      bool? blockquote,
      String? align,
      bool? codeBlock,
      String? list});
}

/// @nodoc
class _$AttributesCopyWithImpl<$Res> implements $AttributesCopyWith<$Res> {
  _$AttributesCopyWithImpl(this._value, this._then);

  final Attributes _value;
  // ignore: unused_field
  final $Res Function(Attributes) _then;

  @override
  $Res call({
    Object? header = freezed,
    Object? bold = freezed,
    Object? italic = freezed,
    Object? underline = freezed,
    Object? strike = freezed,
    Object? code = freezed,
    Object? blockquote = freezed,
    Object? align = freezed,
    Object? codeBlock = freezed,
    Object? list = freezed,
  }) {
    return _then(_value.copyWith(
      header: header == freezed
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as int?,
      bold: bold == freezed
          ? _value.bold
          : bold // ignore: cast_nullable_to_non_nullable
              as bool?,
      italic: italic == freezed
          ? _value.italic
          : italic // ignore: cast_nullable_to_non_nullable
              as bool?,
      underline: underline == freezed
          ? _value.underline
          : underline // ignore: cast_nullable_to_non_nullable
              as bool?,
      strike: strike == freezed
          ? _value.strike
          : strike // ignore: cast_nullable_to_non_nullable
              as bool?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as bool?,
      blockquote: blockquote == freezed
          ? _value.blockquote
          : blockquote // ignore: cast_nullable_to_non_nullable
              as bool?,
      align: align == freezed
          ? _value.align
          : align // ignore: cast_nullable_to_non_nullable
              as String?,
      codeBlock: codeBlock == freezed
          ? _value.codeBlock
          : codeBlock // ignore: cast_nullable_to_non_nullable
              as bool?,
      list: list == freezed
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_AttributesCopyWith<$Res>
    implements $AttributesCopyWith<$Res> {
  factory _$$_AttributesCopyWith(
          _$_Attributes value, $Res Function(_$_Attributes) then) =
      __$$_AttributesCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? header,
      bool? bold,
      bool? italic,
      bool? underline,
      bool? strike,
      bool? code,
      bool? blockquote,
      String? align,
      bool? codeBlock,
      String? list});
}

/// @nodoc
class __$$_AttributesCopyWithImpl<$Res> extends _$AttributesCopyWithImpl<$Res>
    implements _$$_AttributesCopyWith<$Res> {
  __$$_AttributesCopyWithImpl(
      _$_Attributes _value, $Res Function(_$_Attributes) _then)
      : super(_value, (v) => _then(v as _$_Attributes));

  @override
  _$_Attributes get _value => super._value as _$_Attributes;

  @override
  $Res call({
    Object? header = freezed,
    Object? bold = freezed,
    Object? italic = freezed,
    Object? underline = freezed,
    Object? strike = freezed,
    Object? code = freezed,
    Object? blockquote = freezed,
    Object? align = freezed,
    Object? codeBlock = freezed,
    Object? list = freezed,
  }) {
    return _then(_$_Attributes(
      header: header == freezed
          ? _value.header
          : header // ignore: cast_nullable_to_non_nullable
              as int?,
      bold: bold == freezed
          ? _value.bold
          : bold // ignore: cast_nullable_to_non_nullable
              as bool?,
      italic: italic == freezed
          ? _value.italic
          : italic // ignore: cast_nullable_to_non_nullable
              as bool?,
      underline: underline == freezed
          ? _value.underline
          : underline // ignore: cast_nullable_to_non_nullable
              as bool?,
      strike: strike == freezed
          ? _value.strike
          : strike // ignore: cast_nullable_to_non_nullable
              as bool?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as bool?,
      blockquote: blockquote == freezed
          ? _value.blockquote
          : blockquote // ignore: cast_nullable_to_non_nullable
              as bool?,
      align: align == freezed
          ? _value.align
          : align // ignore: cast_nullable_to_non_nullable
              as String?,
      codeBlock: codeBlock == freezed
          ? _value.codeBlock
          : codeBlock // ignore: cast_nullable_to_non_nullable
              as bool?,
      list: list == freezed
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Attributes extends _Attributes {
  const _$_Attributes(
      {this.header,
      this.bold,
      this.italic,
      this.underline,
      this.strike,
      this.code,
      this.blockquote,
      this.align,
      this.codeBlock,
      this.list})
      : super._();

  @override
  final int? header;
  @override
  final bool? bold;
  @override
  final bool? italic;
  @override
  final bool? underline;
  @override
  final bool? strike;
  @override
  final bool? code;
  @override
  final bool? blockquote;
  @override
  final String? align;
  @override
  final bool? codeBlock;
  @override
  final String? list;

  @override
  String toString() {
    return 'Attributes(header: $header, bold: $bold, italic: $italic, underline: $underline, strike: $strike, code: $code, blockquote: $blockquote, align: $align, codeBlock: $codeBlock, list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Attributes &&
            const DeepCollectionEquality().equals(other.header, header) &&
            const DeepCollectionEquality().equals(other.bold, bold) &&
            const DeepCollectionEquality().equals(other.italic, italic) &&
            const DeepCollectionEquality().equals(other.underline, underline) &&
            const DeepCollectionEquality().equals(other.strike, strike) &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality()
                .equals(other.blockquote, blockquote) &&
            const DeepCollectionEquality().equals(other.align, align) &&
            const DeepCollectionEquality().equals(other.codeBlock, codeBlock) &&
            const DeepCollectionEquality().equals(other.list, list));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(header),
      const DeepCollectionEquality().hash(bold),
      const DeepCollectionEquality().hash(italic),
      const DeepCollectionEquality().hash(underline),
      const DeepCollectionEquality().hash(strike),
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(blockquote),
      const DeepCollectionEquality().hash(align),
      const DeepCollectionEquality().hash(codeBlock),
      const DeepCollectionEquality().hash(list));

  @JsonKey(ignore: true)
  @override
  _$$_AttributesCopyWith<_$_Attributes> get copyWith =>
      __$$_AttributesCopyWithImpl<_$_Attributes>(this, _$identity);
}

abstract class _Attributes extends Attributes {
  const factory _Attributes(
      {final int? header,
      final bool? bold,
      final bool? italic,
      final bool? underline,
      final bool? strike,
      final bool? code,
      final bool? blockquote,
      final String? align,
      final bool? codeBlock,
      final String? list}) = _$_Attributes;
  const _Attributes._() : super._();

  @override
  int? get header => throw _privateConstructorUsedError;
  @override
  bool? get bold => throw _privateConstructorUsedError;
  @override
  bool? get italic => throw _privateConstructorUsedError;
  @override
  bool? get underline => throw _privateConstructorUsedError;
  @override
  bool? get strike => throw _privateConstructorUsedError;
  @override
  bool? get code => throw _privateConstructorUsedError;
  @override
  bool? get blockquote => throw _privateConstructorUsedError;
  @override
  String? get align => throw _privateConstructorUsedError;
  @override
  bool? get codeBlock => throw _privateConstructorUsedError;
  @override
  String? get list => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AttributesCopyWith<_$_Attributes> get copyWith =>
      throw _privateConstructorUsedError;
}
