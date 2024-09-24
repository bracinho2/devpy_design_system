import 'package:devpy_design_system/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

import 'main.directories.g.dart';

void main() {
  runApp(const WidgetbookApp());
}

@widgetbook.App()
class WidgetbookApp extends StatelessWidget {
  const WidgetbookApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Widgetbook(
      appBuilder: (context, child) => ColoredBox(
        color: const Color(0xFF404040),
        child: child,
      ),
      directories: directories,
      addons: [
        MaterialThemeAddon(
          themes: [
            WidgetbookTheme(
              name: 'Light',
              data: ThemeData(
                colorScheme: lightColorScheme,
                textTheme: const TextTheme(
                  // FAB //FilledButton
                  labelLarge: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                  // labelMedium: TextStyle(
                  //   fontFamily: 'Poppins',
                  //   fontSize: 16,
                  //   fontWeight: FontWeight.w700,
                  // ),
                  // labelSmall: TextStyle(
                  //   fontFamily: 'Poppins',
                  //   fontSize: 16,
                  //   fontWeight: FontWeight.w700,
                  // ),
                  // bodyLarge: TextStyle(
                  //   fontFamily: 'Poppins',
                  //   fontSize: 16,
                  //   fontWeight: FontWeight.w700,
                  // ),
                  // bodyMedium: TextStyle(
                  //   fontFamily: 'Poppins',
                  //   fontSize: 16,
                  //   fontWeight: FontWeight.w700,
                  // ),
                  // bodySmall: TextStyle(
                  //   fontFamily: 'Poppins',
                  //   fontSize: 16,
                  //   fontWeight: FontWeight.w700,
                  // ),
                  // displayLarge: TextStyle(
                  //   fontFamily: 'Poppins',
                  //   fontSize: 16,
                  //   fontWeight: FontWeight.w700,
                  // ),
                  // displayMedium: TextStyle(
                  //   fontFamily: 'Poppins',
                  //   fontSize: 16,
                  //   fontWeight: FontWeight.w700,
                  // ),
                  // displaySmall: TextStyle(
                  //   fontFamily: 'Poppins',
                  //   fontSize: 16,
                  //   fontWeight: FontWeight.w700,
                  // ),
                  // titleLarge: TextStyle(
                  //   fontFamily: 'Poppins',
                  //   fontSize: 16,
                  //   fontWeight: FontWeight.w700,
                  // ),
                  // titleMedium: TextStyle(
                  //   fontFamily: 'Poppins',
                  //   fontSize: 16,
                  //   fontWeight: FontWeight.w700,
                  // ),
                  // titleSmall: TextStyle(
                  //   fontFamily: 'Poppins',
                  //   fontSize: 16,
                  //   fontWeight: FontWeight.w700,
                  // ),
                  // headlineLarge: TextStyle(
                  //   fontFamily: 'Poppins',
                  //   fontSize: 16,
                  //   fontWeight: FontWeight.w700,
                  // ),
                  // headlineMedium: TextStyle(
                  //   fontFamily: 'Poppins',
                  //   fontSize: 16,
                  //   fontWeight: FontWeight.w700,
                  // ),
                  // headlineSmall: TextStyle(
                  //   fontFamily: 'Poppins',
                  //   fontSize: 16,
                  //   fontWeight: FontWeight.w700,
                  // ),
                ),
                extensions: [
                  devPyLightColors,
                  devPyStyles,
                ],
                brightness: Brightness.light,
              ),
            ),
            WidgetbookTheme(
              name: 'Dark',
              data: ThemeData(
                colorScheme: darkColorScheme,
                extensions: [
                  devPyDarkColors,
                  devPyStyles,
                ],
                textTheme: const TextTheme(
                  // FAB //FilledButton
                  labelLarge: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                brightness: Brightness.dark,
              ),
            ),
          ],
        ),
        DeviceFrameAddon(
          devices: [
            Devices.ios.iPhone13,
            Devices.android.smallPhone,
          ],
        ),
        AlignmentAddon(
          initialAlignment: Alignment.center,
        ),
      ],
    );
  }
}
