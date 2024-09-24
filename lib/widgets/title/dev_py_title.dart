import 'package:flutter/material.dart';

import '../../theme/theme.dart';

class DevPyTitle extends StatelessWidget {
  const DevPyTitle._({
    required this.label,
    this.color,
  });

  final String label;
  final Color? color;

  factory DevPyTitle({
    required String label,
    Color? color,
  }) {
    return DevPyTitle._(
      label: label,
      color: color,
    );
  }

  @override
  Widget build(BuildContext context) {
    final styles = Theme.of(context).extension<DevPyStyles>()!;
    final colors = Theme.of(context).extension<DevPyColors>()!;

    return Text(
      label,
      textAlign: TextAlign.center,
      style: styles.loginTitle?.copyWith(
        color: color ?? colors.brandColor,
      ),
    );
  }
}
