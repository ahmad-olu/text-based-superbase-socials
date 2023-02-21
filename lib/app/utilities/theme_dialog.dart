import 'package:flash/flash.dart';
import 'package:flutter/material.dart';

Future showThemeDialog({
  required BuildContext context,
  required String title,
  required Widget content,
}) {
  final theme = Theme.of(context);
  return showFlash(
    context: context,
    persistent: false,
    builder: (context, controller) {
      return Flash.dialog(
        controller: controller,
        backgroundColor: theme.scaffoldBackgroundColor,
        barrierColor: theme.colorScheme.secondary,
        child: FlashBar(
          title: Text(
            title,
            style: theme.textTheme.headline2,
          ),
          content: content,
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancel'),
            ),
          ],
        ),
      );
    },
  );
}
