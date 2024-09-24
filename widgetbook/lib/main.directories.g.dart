// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_import, prefer_relative_imports, directives_ordering

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AppGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:widgetbook/widgetbook.dart' as _i1;
import 'package:widgetbook_workspace/buttons/fab_extended_button.dart' as _i2;
import 'package:widgetbook_workspace/buttons/primary_button.dart' as _i3;
import 'package:widgetbook_workspace/buttons/secondary_button.dart' as _i4;
import 'package:widgetbook_workspace/text_fields/text_field.dart' as _i5;

final directories = <_i1.WidgetbookNode>[
  _i1.WidgetbookFolder(
    name: 'widgets',
    children: [
      _i1.WidgetbookFolder(
        name: 'buttons',
        children: [
          _i1.WidgetbookLeafComponent(
            name: 'FabExtendedButton',
            useCase: _i1.WidgetbookUseCase(
              name: 'FAB-Extended',
              builder: _i2.fabExtended,
            ),
          ),
          _i1.WidgetbookLeafComponent(
            name: 'PrimaryButton',
            useCase: _i1.WidgetbookUseCase(
              name: 'PrimaryButton',
              builder: _i3.primaryButton,
            ),
          ),
          _i1.WidgetbookLeafComponent(
            name: 'SecondaryButton',
            useCase: _i1.WidgetbookUseCase(
              name: 'SecondaryButton',
              builder: _i4.secondaryButton,
            ),
          ),
        ],
      ),
      _i1.WidgetbookFolder(
        name: 'text_field',
        children: [
          _i1.WidgetbookLeafComponent(
            name: 'CustomTextField',
            useCase: _i1.WidgetbookUseCase(
              name: 'CustomTextField',
              builder: _i5.primaryButton,
            ),
          )
        ],
      ),
    ],
  )
];
