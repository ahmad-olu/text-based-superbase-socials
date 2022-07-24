import 'package:flutter/material.dart';
import 'package:geat/auth/core/core.dart';
import 'package:geat/auth/walk_in/walk_in.dart';

class UsernameTextFormField extends StatelessWidget {
  const UsernameTextFormField({
    super.key,
    required this.onChanged,
    required this.canSubmit,
    required this.usernameInput,
    required this.isCheckingUsername,
  });
  final void Function(String)? onChanged;
  final bool canSubmit;
  final UsernameInput usernameInput;
  final bool isCheckingUsername;

  @override
  Widget build(BuildContext context) {
    String? _usernameError(BuildContext context, UsernameInput username) {
      final error = username.displayError;
      if (error == null) return null;
      if (error == UsernameInputError.empty) {
        return 'Empty Block';
      } else if (error == UsernameInputError.invalid) {
        return 'Username invalid';
      } else if (error == UsernameInputError.taken) {
        return "---> ${username.value} has been taken";
      }
      return null;
    }

    return Padding(
      padding: const EdgeInsets.only(right: 56),
      child: TextFormField(
        autocorrect: false,
        decoration: InputDecoration(
          icon: const Icon(Icons.person),
          labelText: 'username',
          helperText: canSubmit ? usernameInput.value : null,
          errorText: _usernameError(context, usernameInput),
          filled: true,
          suffix: isCheckingUsername
              ? ConstrainedBox(
                  constraints: BoxConstraints.tight(const Size(15, 15)),
                  child: const CircularProgressIndicator(strokeWidth: 3),
                )
              : null,
        ),
        keyboardType: TextInputType.text,
        onChanged: onChanged,
        textInputAction: TextInputAction.next,
      ),
    );
  }
}

class UsernameNormalTextFormField extends StatelessWidget {
  const UsernameNormalTextFormField({
    super.key,
    required this.onChanged,
    required this.usernameInput,
  });
  final void Function(String)? onChanged;
  final Username2Input usernameInput;

  @override
  Widget build(BuildContext context) {
    String? _usernameError(BuildContext context, Username2Input username) {
      final error = username.error;
      if (error == null) return null;
      if (error == UsernameInputError.empty) {
        return 'Empty Block';
      } else if (error == UsernameInputError.invalid) {
        return 'Username invalid';
      }
      return null;
    }

    return Padding(
      padding: const EdgeInsets.only(right: 56),
      child: TextFormField(
        autocorrect: false,
        initialValue: usernameInput.value,
        decoration: InputDecoration(
          icon: const Icon(Icons.person),
          labelText: 'username',
          helperText: 'Proximate32',
          errorText: _usernameError(context, usernameInput),
        ),
        keyboardType: TextInputType.text,
        onChanged: onChanged,
        textInputAction: TextInputAction.next,
      ),
    );
  }
}
