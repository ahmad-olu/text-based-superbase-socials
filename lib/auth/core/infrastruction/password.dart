import 'package:formz/formz.dart';

enum PasswordValidationError { invalid, empty }

class Password extends FormzInput<String, PasswordValidationError> {
  Password.pure([String value = ""]) : super.pure(value);
  Password.dirty([String value = ""]) : super.dirty(value);

  static final _passwordRegex = RegExp(
    r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$',
  );

  @override
  PasswordValidationError? validator(String? value) {
    if (value!.isEmpty) return PasswordValidationError.empty;
    if (!_passwordRegex.hasMatch(value)) return PasswordValidationError.invalid;
    return null;
  }
}
