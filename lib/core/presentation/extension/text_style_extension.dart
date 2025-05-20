import 'package:flutter/material.dart';

import 'package:bnext/config/theme/app_colors.dart';

extension XTextStyle on TextStyle {
  /// Change weight
  TextStyle toWeight(FontWeight? fontWeight) =>
      copyWith(fontWeight: fontWeight);

  /// Change size
  TextStyle toSize(double? fontSize) => copyWith(fontSize: fontSize);

  /// Change color
  TextStyle toColor(Color? color) => copyWith(color: color);

  /// Color : #022071
  TextStyle get greyDark => toColor(AppColors.primaryMain);

  /// Color : #42486C
  TextStyle get primary => toColor(AppColors.neutral100);

  /// Color : #6B718C
  TextStyle get grey => toColor(AppColors.neutral90);

  /// Color : #005BAB
  TextStyle get blue => toColor(AppColors.primaryMain);

  /// Color : #F36F20
  TextStyle get orange => toColor(AppColors.accentMain);

  /// Color : #FC4A46
  TextStyle get red => toColor(AppColors.dangerMain);

  /// Color : #FFFFFF
  TextStyle get white => toColor(AppColors.neutral10);

  /// Color : #000000
  TextStyle get black => toColor(AppColors.black);

  /// FontWeight.w100
  TextStyle get thin => toWeight(FontWeight.w100);

  /// FontWeight.w200
  TextStyle get extraLight => toWeight(FontWeight.w200);

  /// FontWeight.w300
  TextStyle get light => toWeight(FontWeight.w300);

  /// FontWeight.w400
  TextStyle get normal => toWeight(FontWeight.w400);

  /// FontWeight.w500
  TextStyle get medium => toWeight(FontWeight.w500);

  /// FontWeight.w600
  TextStyle get semiBold => toWeight(FontWeight.w600);

  /// FontWeight.w700
  TextStyle get bold => toWeight(FontWeight.w700);

  /// FontWeight.w800
  TextStyle get extraBold => toWeight(FontWeight.w800);

  /// FontWeight.w900
  TextStyle get extraBlack => toWeight(FontWeight.w900);
}
