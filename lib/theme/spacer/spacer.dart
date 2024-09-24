// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class DevPySpacer {
  DevPySpacer._();

  static const double _minimumGridValue = 8.0;

  static DevPySpacerSide get left => DevPySpacerSide(
        _minimumGridValue,
        SidesFlag(1, 0, 0, 0),
      );

  static DevPySpacerSide get top => DevPySpacerSide(
        _minimumGridValue,
        SidesFlag(0, 1, 0, 0),
      );

  static DevPySpacerSide get right => DevPySpacerSide(
        _minimumGridValue,
        SidesFlag(0, 0, 1, 0),
      );

  static DevPySpacerSide get bottom => DevPySpacerSide(
        _minimumGridValue,
        SidesFlag(0, 0, 0, 1),
      );

  static DevPySpacerSide get all => DevPySpacerSide(
        _minimumGridValue,
        SidesFlag(1, 1, 1, 1),
      );

  static DevPySpacerSide get horizontal => DevPySpacerSide(
        _minimumGridValue,
        SidesFlag(1, 0, 1, 0),
      );

  static DevPySpacerSide get vertical => DevPySpacerSide(
        _minimumGridValue,
        SidesFlag(0, 1, 0, 1),
      );
}

class DevPySpacerSide {
  double spacer;
  SidesFlag sidesFlag;

  DevPySpacerSide(
    this.spacer,
    this.sidesFlag,
  );

  EdgeInsets get none {
    return EdgeInsets.zero;
  }

  EdgeInsets get xxs {
    return _dimensionSize(spacer, sidesFlag, _FactorHelper.xxs);
  }

  EdgeInsets get xs {
    return _dimensionSize(spacer, sidesFlag, _FactorHelper.xs);
  }

  EdgeInsets get md {
    return _dimensionSize(spacer, sidesFlag, _FactorHelper.md);
  }

  EdgeInsets get lg {
    return _dimensionSize(spacer, sidesFlag, _FactorHelper.lg);
  }

  EdgeInsets _dimensionSize(double spacer, SidesFlag sidesFlag, double factor) {
    return EdgeInsets.only(
      left: sidesFlag.leftFlag * spacer * factor,
      top: sidesFlag.topFlag * spacer * factor,
      right: sidesFlag.rightFlag * spacer * factor,
      bottom: sidesFlag.bottomFlag * spacer * factor,
    );
  }
}

class SidesFlag {
  double leftFlag = 0;
  double topFlag = 0;
  double rightFlag = 0;
  double bottomFlag = 0;

  SidesFlag(
    this.leftFlag,
    this.topFlag,
    this.rightFlag,
    this.bottomFlag,
  );
}

class _FactorHelper {
  static double xxs = 0.5;
  static double xs = 1;
  //static double sm = 1.5;
  static double md = 2;
  //static double xmd = 3;
  static double lg = 4;
  //static double xlg = 5;
  //static double xl = 8;
  //static double xxl = 16;
  //static double xxxl = 32;
}
