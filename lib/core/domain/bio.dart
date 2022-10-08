import 'package:formz/formz.dart';

enum BioValidationError { invalid, empty }

class Bio extends FormzInput<String, BioValidationError> {
  const Bio.pure([String value = '']) : super.pure(value);
  const Bio.dirty([String value = '']) : super.dirty(value);

  static final _bioRegex =
      RegExp(r'^(?=.{8,20}$)(?![_.])(?!.*[_.]{2})[a-zA-Z0-9._]+(?<![_.])$');

  @override
  BioValidationError? validator(String? value) {
    if (value!.isEmpty) return BioValidationError.empty;
    if (!_bioRegex.hasMatch(value)) return BioValidationError.invalid;
    return null;
  }
}
