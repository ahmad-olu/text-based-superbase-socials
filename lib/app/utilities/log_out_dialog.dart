import 'package:flutter/material.dart';
import 'package:geat/app/utilities/utility.dart';

Future<bool> showLogOutDialog(BuildContext context) {
  return showGenericDialog<bool>(
    context: context,
    title: 'Log out',
    content: 'Are you sure you want to Log out',
    optionBuilder: () => {
      'cancel': false,
      'log-out': true,
    },
  ).then(
    (value) => value ?? false,
  );
}
