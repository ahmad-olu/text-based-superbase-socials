import 'package:flutter/material.dart';

class GlobalElevatedButton extends StatelessWidget {
  const GlobalElevatedButton({
    Key? key,
    this.size = const Size(280, 50),
    required this.onPressed,
    required this.theme,
    required this.text,
    this.showBorderLine = false,
  }) : super(key: key);
  final Size size;
  final ThemeData theme;
  final String text;
  final bool showBorderLine;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        side: showBorderLine
            ? BorderSide(
                color: theme.colorScheme.secondary,
              )
            : null,
        fixedSize: size,
        backgroundColor: theme.colorScheme.secondary,
        elevation: 12,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: Text(
        text,
        style: theme.textTheme.headline5?.copyWith(
          fontWeight: FontWeight.w400,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
