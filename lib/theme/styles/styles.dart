import 'package:flutter/material.dart';

final devPyStyles = DevPyStyles(
  appBarText: const TextStyle(
    fontFamily: 'Poppins',
    fontSize: 16,
    fontWeight: FontWeight.w500,
  ),
  buttomText: const TextStyle(
    fontFamily: 'Poppins',
    fontSize: 16,
    fontWeight: FontWeight.w700,
  ),
  coomingSoon: const TextStyle(
    fontFamily: 'Poppins',
    fontSize: 20,
    fontWeight: FontWeight.w500,
  ),
  dashboardMenuItem: const TextStyle(
    fontFamily: 'Poppins',
    fontSize: 16,
    fontWeight: FontWeight.w500,
  ),
  discoveryDetailModalSubtitle: const TextStyle(
    fontFamily: 'Poppins',
    fontSize: 16,
    fontWeight: FontWeight.w500,
  ),
  discoveryDetailModalTitle: const TextStyle(
    fontFamily: 'Poppins',
    fontSize: 20,
    fontWeight: FontWeight.w700,
  ),
  formError: const TextStyle(
    fontFamily: 'Poppins',
    fontSize: 12,
    fontWeight: FontWeight.w500,
  ),
  hintStyle: const TextStyle(
    fontFamily: 'Poppins',
    fontSize: 16,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
  ),
  loginTitle: const TextStyle(
    fontFamily: 'Poppins',
    fontSize: 24,
    fontWeight: FontWeight.w600,
  ),
  searchText: const TextStyle(
    fontFamily: 'Poppins',
    fontSize: 16,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
  ),
);

class DevPyStyles extends ThemeExtension<DevPyStyles> {
  DevPyStyles({
    this.appBarText,
    this.buttomText,
    this.coomingSoon,
    this.dashboardMenuItem,
    this.discoveryDetailModalSubtitle,
    this.discoveryDetailModalTitle,
    this.formError,
    this.hintStyle,
    this.loginTitle,
    this.searchText,
    this.sessionTitle,
  });

  final TextStyle? appBarText;
  final TextStyle? buttomText;
  final TextStyle? coomingSoon;
  final TextStyle? dashboardMenuItem;
  final TextStyle? discoveryDetailModalSubtitle;
  final TextStyle? discoveryDetailModalTitle;
  final TextStyle? formError;
  final TextStyle? hintStyle;
  final TextStyle? loginTitle;
  final TextStyle? searchText;
  final TextStyle? sessionTitle;

  @override
  ThemeExtension<DevPyStyles> copyWith({
    TextStyle? appBarText,
    TextStyle? buttomText,
    TextStyle? coomingSoon,
    TextStyle? dashboardMenuItem,
    TextStyle? discoveryDetailModalSubtitle,
    TextStyle? discoveryDetailModalTitle,
    TextStyle? formError,
    TextStyle? hintStyle,
    TextStyle? loginTitle,
    TextStyle? searchText,
    TextStyle? sessionTitle,
  }) {
    return DevPyStyles(
      appBarText: appBarText ?? this.appBarText,
      buttomText: buttomText ?? this.buttomText,
      coomingSoon: coomingSoon ?? this.coomingSoon,
      dashboardMenuItem: dashboardMenuItem ?? this.dashboardMenuItem,
      discoveryDetailModalSubtitle:
          discoveryDetailModalSubtitle ?? this.discoveryDetailModalSubtitle,
      discoveryDetailModalTitle:
          discoveryDetailModalTitle ?? this.discoveryDetailModalTitle,
      formError: formError ?? this.formError,
      hintStyle: hintStyle ?? this.hintStyle,
      loginTitle: loginTitle ?? this.loginTitle,
      searchText: searchText ?? this.searchText,
      sessionTitle: sessionTitle ?? this.sessionTitle,
    );
  }

  @override
  ThemeExtension<DevPyStyles> lerp(
    covariant ThemeExtension<DevPyStyles>? other,
    double t,
  ) {
    if (other is! DevPyStyles) {
      return this;
    }

    return DevPyStyles(
      appBarText: TextStyle.lerp(appBarText, other.appBarText, t),
      buttomText: TextStyle.lerp(buttomText, other.buttomText, t),
      coomingSoon: TextStyle.lerp(coomingSoon, other.coomingSoon, t),
      dashboardMenuItem:
          TextStyle.lerp(dashboardMenuItem, other.dashboardMenuItem, t),
      discoveryDetailModalSubtitle: TextStyle.lerp(
          discoveryDetailModalSubtitle, other.discoveryDetailModalSubtitle, t),
      discoveryDetailModalTitle: TextStyle.lerp(
          discoveryDetailModalTitle, other.discoveryDetailModalTitle, t),
      formError: TextStyle.lerp(formError, other.formError, t),
      hintStyle: TextStyle.lerp(hintStyle, other.hintStyle, t),
      loginTitle: TextStyle.lerp(loginTitle, other.loginTitle, t),
      searchText: TextStyle.lerp(searchText, other.searchText, t),
      sessionTitle: TextStyle.lerp(sessionTitle, other.sessionTitle, t),
    );
  }
}
