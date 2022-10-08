import 'package:formz/formz.dart';

enum UsernameInputError { empty, invalid, taken, small }

class UsernameInput extends FormzInput<String, UsernameInputError> {
  const UsernameInput.pure({String value = "", this.serverError})
      : super.pure(value);

  const UsernameInput.dirty({String value = "", this.serverError})
      : super.dirty(value);

  final UsernameInputError? serverError;
  UsernameInputError? get displayError => pure ? null : super.error;
  static final _usernameRegex =
      RegExp(r'^(?=.{6,20}$)(?![_.])(?!.*[_.]{2})[a-zA-Z0-9._]+(?<![_.])$');

  @override
  UsernameInputError? validator(String value) {
    final error = serverError;
    if (error != null) return error;
    if (value.isEmpty) return UsernameInputError.empty;
    if (value.length < 6) return UsernameInputError.small;
    if (!_usernameRegex.hasMatch(value)) return UsernameInputError.invalid;
    return null;
  }

  @override
  String toString() => '($value, $error)';
}

class Username2Input extends FormzInput<String, UsernameInputError> {
  Username2Input.pure([String value = ""]) : super.pure(value);

  Username2Input.dirty([String value = ""]) : super.dirty(value);

  static final _usernameRegex =
      RegExp(r'^(?=.{8,20}$)(?![_.])(?!.*[_.]{2})[a-zA-Z0-9._]+(?<![_.])$');

  @override
  UsernameInputError? validator(String value) {
    if (value.isEmpty) return UsernameInputError.empty;
    if (value.length < 9) return UsernameInputError.small;
    if (!_usernameRegex.hasMatch(value)) return UsernameInputError.invalid;
    return null;
  }

  @override
  String toString() => '($value,$error)';
}
