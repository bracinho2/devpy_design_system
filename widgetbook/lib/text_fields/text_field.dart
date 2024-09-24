import 'package:devpy_design_system/devpy_design_system.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  name: 'CustomTextField',
  type: CustomTextField,
)
CustomTextField primaryButton(BuildContext context) {
  final colors = Theme.of(context).extension<DevPyColors>()!;
  final styles = Theme.of(context).extension<DevPyStyles>()!;

  return CustomTextField(
    label: context.knobs.string(
      label: 'Text Field',
      initialValue: 'Text Field',
    ),
    controller: TextEditingController(),
    onTap: context.knobs.boolean(
      label: 'OnTap',
      initialValue: false,
    )
        ? () {}
        : null,
    colors: colors,
    styles: styles,
  );
}
