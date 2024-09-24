import 'package:flutter/material.dart';

class FabExtendedButton extends StatelessWidget {
  const FabExtendedButton({
    super.key,
    required this.label,
    required this.icon,
    this.onPressed,
    this.padding = const EdgeInsets.symmetric(
      horizontal: 20,
      vertical: 20,
    ),
    this.backgroudColor,
    this.foregroundColor,
    this.style,
  });

  final String label;
  final Widget icon;
  final Function()? onPressed;
  final EdgeInsets padding;
  final Color? backgroudColor;
  final Color? foregroundColor;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      extendedPadding: padding,
      backgroundColor: backgroudColor,
      foregroundColor: foregroundColor,
      clipBehavior: Clip.antiAlias,
      onPressed: onPressed,
      label: Text(label),
      icon: icon,
    );
  }
}
