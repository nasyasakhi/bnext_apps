import 'package:flutter/material.dart';

class Sizes {
  static const double p2 = 2;
  static const double p4 = 4;
  static const double p8 = 8;
  static const double p10 = 10;
  static const double p12 = 12;
  static const double p14 = 14;
  static const double p16 = 16;
  static const double p20 = 20;
  static const double p22 = 22;
  static const double p24 = 24;
  static const double p28 = 28;
  static const double p32 = 32;
  static const double p36 = 36;
  static const double p40 = 40;
  static const double p42 = 42;
  static const double p44 = 44;
  static const double p46 = 46;
  static const double p48 = 48;
  static const double p56 = 56;
  static const double p64 = 64;
  static const double p72 = 72;
  static const double p74 = 74;
  static const double p80 = 80;
  static const double p96 = 96;
  static const double p104 = 104;
  static const double p116 = 116;
  static const double p124 = 124;
  static const double p172 = 172;

  static MediaQueryData mediaQueryData(BuildContext context) =>
      MediaQuery.of(context);

  static double screenWidth(BuildContext context) =>
      mediaQueryData(context).size.width;
  static double screenHeight(BuildContext context) =>
      mediaQueryData(context).size.height;

  static double blockSizeHorizontal(BuildContext context) =>
      screenWidth(context) / 100;
  static double blockSizeVertical(BuildContext context) =>
      screenHeight(context) / 100;

  static double _safeAreaHorizontal(BuildContext context) =>
      blockSizeHorizontal(context) * 10;
  static double _safeAreaVertical(BuildContext context) =>
      blockSizeVertical(context) * 10;

  static double safeBlockHorizontal(BuildContext context) =>
      (_safeAreaHorizontal(context) / 100) * 10;
  static double safeBlockVertical(BuildContext context) =>
      (_safeAreaVertical(context) / 100) * 10;

  static EdgeInsets viewInsets(BuildContext context) =>
      mediaQueryData(context).viewInsets;

  static double paddingTop(BuildContext context) =>
      mediaQueryData(context).padding.top;
  static double paddingBottom(BuildContext context) =>
      mediaQueryData(context).padding.bottom;
}
