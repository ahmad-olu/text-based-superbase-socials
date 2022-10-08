import 'package:formz/formz.dart';

enum WebsiteValidationError { invalid, empty }

class Website extends FormzInput<String, WebsiteValidationError> {
  const Website.pure([String value = '']) : super.pure(value);
  const Website.dirty([String value = '']) : super.dirty(value);

  static final _websiteRegex = RegExp(
    r'(https?:\/\/)?(www\.)[-a-zA-Z0-9@:%._\+~#=]{2,256}\.[a-z]{2,4}\b([-a-zA-Z0-9@:%_\+.~#?&//=]*)|(https?:\/\/)?(www\.)?(?!ww)[-a-zA-Z0-9@:%._\+~#=]{2,256}\.[a-z]{2,4}\b([-a-zA-Z0-9@:%_\+.~#?&//=]*)',
  );

  @override
  WebsiteValidationError? validator(String? value) {
    if (value!.isEmpty) return WebsiteValidationError.empty;
    if (!_websiteRegex.hasMatch(value)) return WebsiteValidationError.invalid;
    return null;
  }
}
