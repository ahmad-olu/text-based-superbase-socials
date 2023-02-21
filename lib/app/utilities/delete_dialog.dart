import 'package:flutter/material.dart';
import 'package:geat/app/utilities/utility.dart';

Future<bool> showDeleteDialog(BuildContext context) {
  return showGenericDialog<bool>(
    context: context,
    title: 'Delete',
    content: 'Are you sure you want to delete',
    optionBuilder: () => {
      'cancel': false,
      'yes': true,
    },
  ).then(
    (value) => value ?? false,
  );
}
