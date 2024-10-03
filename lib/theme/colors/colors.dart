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

/// Light Primary Color
const lightPrimaryColor = Color(0xff050922);

/// Light Secondary Color
const lightSecondaryColor = Color(0xffFAFBFF);

ColorScheme lightColorScheme = const ColorScheme(
  brightness: Brightness.light,

  /// Usado como fundo de botões "Filled"
  primary: lightPrimaryColor,

  /// Cor do texto ou ícone sobre o fundo do botão "Filled"
  onPrimary: lightSecondaryColor,

  /// Cor de fundo de botões "Filled"
  primaryContainer: lightPrimaryColor,

  /// Cor do texto ou ícone sobre o fundo de botões "Filled"
  onPrimaryContainer: lightSecondaryColor,

  /// Usado em componentes secundários, como botões alternativos
  secondary: Color(0xFF03DAC6),

  /// Cor do texto ou ícone sobre componentes secundários
  onSecondary: Color(0xFF000000),

  /// Cor de fundo de botões ou containers secundários
  secondaryContainer: Color(0xFF018786),

  /// Cor do texto ou ícone sobre o fundo de containers secundários
  onSecondaryContainer: Color(0xFF03DAC6),

  /// Cor usada em elementos de erro, como textos e ícones
  error: Color(0xFFB00020),

  /// Cor do texto ou ícone sobre elementos de erro
  onError: Color(0xFFFFFFFF),

  /// Cor de fundo de superfícies, como cartões ou modais
  surfaceContainer: lightSecondaryColor,

  /// Cor usada em superfícies variantes (ex.: áreas mais escuras)
  onSurfaceVariant: Color(0xFF000000),

  /// Cor padrão das superfícies
  surface: Color(0xFFFFFFFF),

  /// Cor do texto sobre superfícies
  onSurface: Color(0xFF000000),

  /// Cor da borda de botões "Outlined"
  outline: lightPrimaryColor,

  /// Sombra usada em elevações
  shadow: lightPrimaryColor,

  /// Cor usada na superfície inversa (ex.: contraste alto)
  inverseSurface: Color(0xFF303030),

  /// Cor do texto sobre a superfície inversa
  onInverseSurface: lightSecondaryColor,

  /// Cor de destaque inversa, usada para indicar ação ou estado de foco
  inversePrimary: Color(0xFF3700B3),
);

/// Dark Primary Color
const darkPrimaryColor = Color(0xffFAFBFF);

/// Dark Secondary Color
const darkSecondaryColor = Color(0xff050922);

ColorScheme darkColorScheme = const ColorScheme(
  brightness: Brightness.dark,

  /// Usado como fundo de botões "Filled"
  primary: darkPrimaryColor,

  /// Cor do texto ou ícone sobre o fundo do botão "Filled"
  onPrimary: Color(0xFF000000),

  /// Cor de fundo de botões "Filled"
  primaryContainer: darkPrimaryColor,

  /// Cor do texto ou ícone sobre o fundo de botões "Filled"
  onPrimaryContainer: darkSecondaryColor,

  /// Usado em componentes secundários, como botões alternativos
  secondary: Color(0xFF03DAC6),

  /// Cor do texto ou ícone sobre componentes secundários
  onSecondary: Color(0xFF000000),

  /// Cor de fundo de botões ou containers secundários
  secondaryContainer: Color(0xFF018786),

  /// Cor do texto ou ícone sobre o fundo de containers secundários
  onSecondaryContainer: Color(0xFF03DAC6),

  /// Cor usada em elementos de erro, como textos e ícones
  error: Color(0xFFCF6679),

  /// Cor do texto ou ícone sobre elementos de erro
  onError: Color(0xFF370617),

  /// Cor de fundo de superfícies, como cartões ou modais
  surfaceContainer: darkSecondaryColor,

  /// Cor usada em superfícies variantes (ex.: áreas mais escuras)
  onSurfaceVariant: Color(0xFFFFFFFF),

  /// Cor padrão das superfícies
  surface: Color(0xFF1E1E1E),

  /// Cor do texto sobre superfícies
  onSurface: Color(0xFFFFFFFF),

  /// Cor da borda de botões "Outlined"
  outline: darkPrimaryColor,

  /// Sombra usada em elevações
  shadow: Color(0xFF000000),

  /// Cor usada na superfície inversa (ex.: contraste alto)
  inverseSurface: Color(0xFFEEEEEE),

  /// Cor do texto sobre a superfície inversa
  onInverseSurface: Color(0xFF000000),

  /// Cor de destaque inversa, usada para indicar ação ou estado de foco
  inversePrimary: Color(0xFF3700B3),
);
