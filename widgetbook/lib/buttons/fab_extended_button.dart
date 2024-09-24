import 'package:devpy_design_system/devpy_design_system.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  name: 'FAB-Extended',
  type: FabExtendedButton,
)
FabExtendedButton fabExtended(BuildContext context) {
  return FabExtendedButton(
    label: context.knobs.string(
      label: 'Meu botão',
      initialValue: 'Meu botão',
    ),
    icon: const Icon(Icons.download),
    onPressed: context.knobs.boolean(
      label: 'Status',
      initialValue: true,
    )
        ? () {}
        : null,
  );
}
