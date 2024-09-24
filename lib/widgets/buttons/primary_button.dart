import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.title,
    this.onPressed,
    this.padding = const EdgeInsets.symmetric(
      horizontal: 40,
      vertical: 20,
    ),
    this.primaryColor,
    this.secondaryColor,
    this.style,
  });

  final String title;
  final Function()? onPressed;
  final EdgeInsets padding;
  final Color? primaryColor;
  final Color? secondaryColor;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      style: ButtonStyle(
        padding: WidgetStateProperty.resolveWith((states) {
          return padding;
        }),
        backgroundColor: WidgetStateProperty.resolveWith(
          (states) {
            // if (states.contains(WidgetState.disabled)) {
            //   return Colors.green;
            // }
            return secondaryColor;
          },
        ),
      ),
      onPressed: onPressed,
      child: Text(
        title,
        style: style?.copyWith(
          color: primaryColor,
        ),
      ),
    );
  }
}
