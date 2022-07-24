import 'package:flutter/material.dart';
import 'package:geat/auth/core/core.dart';

class PasswordTextFormField extends StatelessWidget {
  const PasswordTextFormField({
    super.key,
    required this.onChanged,
    required this.password,
  });
  final void Function(String)? onChanged;
  final Password password;

  @override
  Widget build(BuildContext context) {
    String? _passwordError(BuildContext context, Password password) {
      final error = password.error;
      if (error == null) return null;
      if (error == PasswordValidationError.empty) {
        return 'Empty Block,';
      } else if (error == PasswordValidationError.invalid) {
        return 'Invalid Password. must Satisfy features of an email';
      }
      return null;
    }

    return Padding(
      padding: const EdgeInsets.only(right: 56),
      child: TextFormField(
        initialValue: password.value,
        decoration: InputDecoration(
          icon: const Icon(Icons.lock),
          labelText: 'Password',
          errorMaxLines: 2,
          helperMaxLines: 2,
          helperText:
              'Password should be at least 8 characters with at least one letter and number',
          errorText: _passwordError(context, password),
        ),
        obscureText: true,
        keyboardType: TextInputType.emailAddress,
        textInputAction: TextInputAction.done,
        onChanged: onChanged,
      ),
    );
  }
}
