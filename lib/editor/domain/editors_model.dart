import 'package:freezed_annotation/freezed_annotation.dart';

part 'editors_model.freezed.dart';

@freezed
class EditorModel with _$EditorModel {
  const EditorModel._();
  const factory EditorModel({
    String? insert,
    Attributes? attributes,
  }) = _EditorModel;
}

@freezed
class Attributes with _$Attributes {
  const Attributes._();
  const factory Attributes({
    int? header,
    bool? bold,
    bool? italic,
    bool? underline,
    bool? strike,
    bool? code,
    bool? blockquote,
    String? align,
    bool? codeBlock,
    String? list,
  }) = _Attributes;
}
