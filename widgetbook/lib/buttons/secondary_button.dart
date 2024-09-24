import 'package:devpy_design_system/devpy_design_system.dart';

import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  name: 'SecondaryButton',
  type: SecondaryButton,
)
SecondaryButton secondaryButton(BuildContext context) {
  final colors = Theme.of(context).extension<DevPyColors>()!;
  final styles = Theme.of(context).extension<DevPyStyles>()!;

  return SecondaryButton(
    title: context.knobs.string(
      label: 'Meu botão',
      initialValue: 'Meu botão',
    ),
    onPressed: context.knobs.boolean(
      label: 'Status',
      initialValue: true,
    )
        ? () {}
        : null,
    style: styles.buttomText?.copyWith(color: colors.backgroudColor),
  );
}
