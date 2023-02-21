import 'package:flutter/material.dart';

typedef DialogOptionBuilder<T> = Map<String, T?> Function();

Future<T?> showGenericDialog<T>({
  required BuildContext context,
  required String title,
  required String content,
  required DialogOptionBuilder optionBuilder,
}) {
  final options = optionBuilder();
  final theme = Theme.of(context);
  return showDialog<T>(
    context: context,
    builder: (context) {
      return AlertDialog(
        backgroundColor: theme.scaffoldBackgroundColor,
        elevation: 7,
        title: Text(
          title,
          style: theme.textTheme.headlineMedium,
        ),
        content: Text(
          content,
          style: theme.textTheme.headlineSmall,
        ),
        actions: options.keys.map((optionTitle) {
          final value = options[optionTitle];
          return TextButton(
            onPressed: () {
              if (value != null) {
                Navigator.of(context).pop(value);
              } else {
                Navigator.of(context).pop();
              }
            },
            child: Text(optionTitle),
          );
        }).toList(),
      );
    },
  );
}

// typedef DialogOptionBuilder<T> = Map<String, T?> Function();

// Future<T?> showGenericDialog<T>({
//   required BuildContext context,
//   required String title,
//   required String content,
//   required DialogOptionBuilder optionBuilder,
// }) {
//   final options = optionBuilder();
//   final theme = Theme.of(context);
//   return showFlash<T>(
//     context: context,
//     persistent: false,
//     builder: (context, controller) {
//       return Flash<T>.dialog(
//         controller: controller,
//         backgroundColor: theme.scaffoldBackgroundColor,
//         barrierColor: theme.colorScheme.secondary,
//         child: FlashBar(
//           title: Text(
//             title,
//             style: theme.textTheme.headline2,
//           ),
//           content: Text(
//             content,
//             style: theme.textTheme.headline3,
//           ),
//           actions: options.keys.map((optionTitle) {
//             final value = options[optionTitle];
//             return TextButton(
//               onPressed: () {
//                 if (value != null) {
//                   Navigator.of(context).pop(value);
//                 } else {
//                   Navigator.of(context).pop();
//                 }
//               },
//               child: Text(optionTitle),
//             );
//           }).toList(),
//         ),
//       );
//     },
//   );
// }
