import 'package:flutter/material.dart';

final devPyLightColors = DevPyColors(
  backgroudColor: const Color(0xff050922),
  brandColor: const Color(0xffFAFBFF),
  getLocationButton: Colors.green,
  myPositionMap: const Color(0xff007AFF),
  saleItemOnMap: const Color(0xffFF9500),
  buyItemOnMap: const Color(0xffFF3B30),
);

final devPyDarkColors = DevPyColors(
  backgroudColor: const Color(0xffFAFBFF),
  brandColor: const Color(0xff050922),
  getLocationButton: Colors.green,
  myPositionMap: const Color(0xff007AFF),
  saleItemOnMap: const Color(0xffFF9500),
  buyItemOnMap: const Color(0xffFF3B30),
);

class DevPyColors extends ThemeExtension<DevPyColors> {
  DevPyColors({
    this.backgroudColor,
    this.brandColor,
    this.getLocationButton,
    this.myPositionMap,
    this.saleItemOnMap,
    this.buyItemOnMap,
  });

  //backgroud
  final Color? backgroudColor;

  //brand color
  final Color? brandColor;

  //LocationColor
  final Color? getLocationButton;

  /// Map Colors
  final Color? myPositionMap;
  final Color? saleItemOnMap;
  final Color? buyItemOnMap;

  @override
  ThemeExtension<DevPyColors> copyWith({
    Color? backgroudColor,
    Color? brandColor,
    Color? inativeColor,
    Color? dataTableHover,
    Color? getLocationButton,
  }) {
    return DevPyColors(
      backgroudColor: backgroudColor ?? this.backgroudColor,
      brandColor: brandColor ?? this.brandColor,
      getLocationButton: getLocationButton ?? this.getLocationButton,
    );
  }

  @override
  ThemeExtension<DevPyColors> lerp(
    covariant ThemeExtension<DevPyColors>? other,
    double t,
  ) {
    if (other is! DevPyColors) {
      return this;
    }

    return DevPyColors(
      backgroudColor: Color.lerp(backgroudColor, other.backgroudColor, t)!,
      brandColor: Color.lerp(brandColor, other.brandColor, t)!,
      getLocationButton:
          Color.lerp(getLocationButton, other.getLocationButton, t)!,
    );
  }
}

ColorScheme lightColorScheme = const ColorScheme(
  brightness: Brightness.light,
  // fundo do filled button;
  primary: Color(0xff050922),
  onPrimary: Color(0xFFFFFFFF),
  primaryContainer: Color(0xff050922), // cor de fundo do bota
  onPrimaryContainer: Color(0xffFAFBFF), // texto do botao
  secondary: Color(0xFF03DAC6),
  onSecondary: Color(0xFF000000),
  secondaryContainer: Color(0xFF018786),
  onSecondaryContainer: Color(0xFF03DAC6),
  error: Color(0xFFB00020),
  onError: Color(0xFFFFFFFF),
  surfaceContainer: Color(0xffFAFBFF),
  onSurfaceVariant: Color(0xFF000000),
  surface: Color(0xFFFFFFFF),
  onSurface: Color(0xFF000000),
  //outlined button
  outline: Color(0xff050922),
  shadow: Color(0xFF000000),
  inverseSurface: Color(0xFF303030),
  onInverseSurface: Color(0xFFFFFFFF),
  inversePrimary: Color(0xFF3700B3),
);

ColorScheme darkColorScheme = const ColorScheme(
  brightness: Brightness.dark,
  primary: Color(0xffFAFBFF),
  onPrimary: Color(0xFF000000),
  //cor de fundo
  primaryContainer: Color(0xffFAFBFF),
  //cor do texto;
  onPrimaryContainer: Color(0xff050922),
  secondary: Color(0xFF03DAC6),
  onSecondary: Color(0xFF000000),
  secondaryContainer: Color(0xFF018786),
  onSecondaryContainer: Color(0xFF03DAC6),
  error: Color(0xFFCF6679),
  onError: Color(0xFF370617),
  surfaceContainer: Color(0xff050922),
  onSurfaceVariant: Color(0xFFFFFFFF),
  surface: Color(0xFF1E1E1E),
  onSurface: Color(0xFFFFFFFF),
  outline: Color(0xffFAFBFF),
  shadow: Color(0xFF000000),
  inverseSurface: Color(0xFFEEEEEE),
  onInverseSurface: Color(0xFF000000),
  inversePrimary: Color(0xFF3700B3),
);
