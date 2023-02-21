import 'package:flutter/material.dart';
import 'package:geat/app/utilities/utility.dart';

Future<void> showErrorDialog(BuildContext context, String content) {
  return showGenericDialog<void>(
    context: context,
    title: 'Error Prompt',
    content: content,
    optionBuilder: () => {
      'OK': null,
    },
  );
}
