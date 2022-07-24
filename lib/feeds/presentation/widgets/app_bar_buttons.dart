import 'package:flutter/material.dart';

class FeedsAppBarFlatButton extends StatelessWidget {
  const FeedsAppBarFlatButton({
    super.key,
    required this.text,
    this.style,
    this.icon,
    this.onPressed,
  });
  final String text;
  final TextStyle? style;
  final IconData? icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Row(
        children: [
          Text(
            text,
            style: style,
          ),
          Icon(icon),
        ],
      ),
    );
  }
}
