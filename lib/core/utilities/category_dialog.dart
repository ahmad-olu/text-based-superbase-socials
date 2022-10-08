import 'package:flutter/material.dart';
import 'package:geat/core/utilities/generic_dialog.dart';

Future<T?> showCategorySelectionModalSheet<T>(
  BuildContext context, {
  required Widget content,
}) {
  final theme = Theme.of(context);
  return showModalBottomSheet(
    context: context,
    builder: (context) {
      return Padding(
        padding: const EdgeInsets.all(4),
        child: content,
      );
    },
  );
}
