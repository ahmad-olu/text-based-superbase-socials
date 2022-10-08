import 'package:formz/formz.dart';

enum ConfirmationCodeValidationError { invalid, empty, inComplete }

class ConfirmationCode
    extends FormzInput<String, ConfirmationCodeValidationError> {
  ConfirmationCode.pure([String value = ""]) : super.pure(value);
  ConfirmationCode.dirty([String value = ""]) : super.dirty(value);

  static final _confirmationCodeRegex = RegExp(
    r'^([0-9])$',
  );

  @override
  ConfirmationCodeValidationError? validator(String? value) {
    if (value!.isEmpty) return ConfirmationCodeValidationError.empty;
    if (!_confirmationCodeRegex.hasMatch(value)) {
      return ConfirmationCodeValidationError.invalid;
    }
    if (value.length < 6) return ConfirmationCodeValidationError.inComplete;
    return null;
  }
}
