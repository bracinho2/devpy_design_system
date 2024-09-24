import 'package:flutter/material.dart';

class SecondaryButton extends StatelessWidget {
  const SecondaryButton({
    super.key,
    required this.title,
    this.onPressed,
    this.padding = const EdgeInsets.symmetric(
      horizontal: 40,
      vertical: 20,
    ),
    required this.style,
  });

  final String title;
  final Function()? onPressed;
  final EdgeInsets padding;

  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        padding: WidgetStateProperty.resolveWith((states) {
          return padding;
        }),
      ),
      child: Text(
        title,
        style: style,
      ),
    );
  }
}
