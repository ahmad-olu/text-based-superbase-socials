import 'package:flash/flash.dart';
import 'package:flutter/material.dart';

Future showGenericSnackBar({
  required BuildContext context,
  required String title,
  required String content,
}) {
  final theme = Theme.of(context);
  return showFlash(
    context: context,
    duration: const Duration(seconds: 4),
    builder: (context, controller) {
      return Flash.bar(
        controller: controller,
        backgroundGradient: LinearGradient(
          colors: [
            theme.colorScheme.secondary,
            theme.colorScheme.primary,
            theme.scaffoldBackgroundColor,
          ],
        ),
        horizontalDismissDirection: HorizontalDismissDirection.startToEnd,
        margin: const EdgeInsets.all(8),
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        forwardAnimationCurve: Curves.easeInOut,
        reverseAnimationCurve: Curves.easeInCubic,
        child: FlashBar(
          title: Text(
            title,
            style: theme.textTheme.headline2,
          ),
          showProgressIndicator: true,
          content: Text(
            content,
            style: theme.textTheme.headline3,
          ),
        ),
      );
    },
  );
}
