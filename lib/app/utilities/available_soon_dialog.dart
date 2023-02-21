import 'package:flutter/material.dart';
import 'package:geat/app/utilities/utility.dart';

Future<bool> showAvailableSoonDialog(BuildContext context) {
  return showGenericDialog<bool>(
    context: context,
    title: 'Unavailable',
    content: 'This feature is not available for now',
    optionBuilder: () => {
      'cancel': false,
    },
  ).then(
    (value) => value ?? false,
  );
}
