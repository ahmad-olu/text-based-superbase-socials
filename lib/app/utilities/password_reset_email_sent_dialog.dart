import 'package:flutter/material.dart';
import 'package:geat/app/utilities/utility.dart';

Future<void> showPasswordResetDialog(BuildContext context) {
  return showGenericDialog<void>(
    context: context,
    title: 'Password Reset',
    content: 'Check you email for a password reset Link',
    optionBuilder: () => {
      'ok': null,
    },
  );
}
