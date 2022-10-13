import 'package:flutter/material.dart';
import 'package:geat/auth/application/username_check_bloc/username_check_bloc.dart';
import 'package:geat/core/domain/username_input.dart';

typedef UsernamePressed = void Function(String)?;

class UsernameTextFormField extends StatelessWidget {
  const UsernameTextFormField({
    super.key,
    required this.onChanged,
    required this.status,
    required this.usernameInput,
    required this.isCheckingUsername,
    required this.canSubmit,
  });
  final UsernamePressed onChanged;
  final UsernameCheckStatus status;
  final UsernameInput usernameInput;
  final bool isCheckingUsername;
  final bool canSubmit;

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
          helperText:
              canSubmit ? '${usernameInput.value} sounds just Fine' : null,
          helperMaxLines: 1,
          errorText: _usernameError(context, usernameInput),
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
      } else if (error == UsernameInputError.small) {
        return 'value must be more than 8';
      }
      return null;
    }

    return Padding(
      padding: const EdgeInsets.only(right: 56),
      child: TextFormField(
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
