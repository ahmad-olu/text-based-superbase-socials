import 'package:flutter/material.dart';
import 'package:geat/core/domain/email.dart';

class EmailTextFormField extends StatelessWidget {
  const EmailTextFormField({
    super.key,
    required this.onChanged,
    required this.email,
  });
  final void Function(String)? onChanged;
  final Email email;

  @override
  Widget build(BuildContext context) {
    String? _emailError(BuildContext context, Email email) {
      final error = email.error;
      if (error == null) {
        return null;
      } else if (error == EmailValidationError.invalid) {
        return 'Invalid email must Satisfy features of an email';
      }
      return null;
      // if (error == EmailValidationError.empty) {
      //   return 'Empty Block';
      // }
    }

    return Padding(
      padding: const EdgeInsets.only(right: 56),
      child: TextFormField(
        decoration: InputDecoration(
          icon: const Icon(Icons.email),
          labelText: 'E-mail',
          helperText: 'valid email ----=> bob@gmail.com',
          errorText: _emailError(context, email),
          errorMaxLines: 2,
        ),
        keyboardType: TextInputType.emailAddress,
        textInputAction: TextInputAction.next,
        onChanged: onChanged,
      ),
    );
  }
}
