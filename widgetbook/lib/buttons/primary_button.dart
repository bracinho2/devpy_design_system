import 'package:devpy_design_system/devpy_design_system.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  name: 'PrimaryButton',
  type: PrimaryButton,
)
PrimaryButton primaryButton(BuildContext context) {
  return PrimaryButton(
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
  );
}
