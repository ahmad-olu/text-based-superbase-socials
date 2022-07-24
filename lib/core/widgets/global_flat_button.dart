import 'package:flutter/material.dart';

class GlobalFlatButton extends StatelessWidget {
  const GlobalFlatButton({
    super.key,
    required this.theme,
    required this.text,
    this.size = const Size(280, 50),
    this.showBorderLine = true,
    required this.onPressed,
  });

  final ThemeData theme;
  final String text;
  final Size size;
  final bool showBorderLine;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        side: showBorderLine
            ? BorderSide(
                color: theme.colorScheme.secondary,
              )
            : null,
        fixedSize: size,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: Text(
        text,
        style: theme.textTheme.headline5?.copyWith(
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
