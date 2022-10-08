import 'package:flutter/material.dart';
import 'package:geat/core/utilities/generic_dialog.dart';

Future<void> showDeleteDialog(BuildContext context, String content) {
  return showGenericDialog<void>(
    context: context,
    title: 'Error Prompt',
    content: content,
    optionBuilder: () => {
      'OK': null,
    },
  );
}
