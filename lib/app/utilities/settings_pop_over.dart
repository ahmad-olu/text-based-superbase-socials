import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:popover/popover.dart';

Future<T?> showSettingsPopOver<T>({
  required BuildContext context,
  required Widget child,
  PopoverDirection direction = PopoverDirection.top,
}) {
  final theme = Theme.of(context);
  return showPopover<T>(
    context: context,
    transitionDuration: const Duration(milliseconds: 150),
    direction: direction,
    onPop: () => log('was popped'),
    backgroundColor: theme.scaffoldBackgroundColor,
    width: 200,
    height: 400,
    arrowHeight: 15,
    arrowWidth: 30,
    bodyBuilder: (context) {
      return child;
    },
  );
}
