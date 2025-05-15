import 'package:bnext_fe/core/presentation/constants/sizes.dart';
import 'package:flutter/material.dart';

extension XTextTheme on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;

  /// MATERIAL 3 TEXT THEME

  /// Fontsize: 57, regular
  TextStyle? get displayLarge => textTheme.displayLarge;

  /// Fontsize: 45, regular
  TextStyle? get displayMedium => textTheme.displayMedium;

  /// Fontsize: 36, regular
  TextStyle? get displaySmall => textTheme.displaySmall;

  /// Fontsize: 32, regular
  TextStyle? get headlineLarge => textTheme.headlineLarge;

  /// Fontsize: 28, regular
  TextStyle? get headlineMedium => textTheme.headlineMedium;

  /// Fontsize: 24, regular
  TextStyle? get headlineSmall => textTheme.headlineSmall;

  /// Fontsize: 22, regular
  TextStyle? get titleLarge => textTheme.titleLarge;

  /// Fontsize: 16, medium, Letter spacing: 0.15,
  TextStyle? get titleMedium => textTheme.titleMedium;

  /// Fontsize: 14, medium, Letter spacing: 0.1
  TextStyle? get titleSmall => textTheme.titleSmall;

  /// Fontsize: 16, regular, Letter spacing: 0.5
  TextStyle? get bodyLarge => textTheme.bodyLarge;

  /// Fontsize: 14, regular, Letter spacing: 0.25
  TextStyle? get bodyMedium => textTheme.bodyMedium;

  /// Fontsize: 12, regular, Letter spacing: 0.4
  TextStyle? get bodySmall => textTheme.bodySmall;

  /// Fontsize: 14, medium, Letter spacing: 0.1
  TextStyle? get labelLarge => textTheme.labelLarge;

  /// Fontsize: 12, medium, Letter spacing: 0.5
  TextStyle? get labelMedium => textTheme.labelMedium;

  /// Fontsize: 11, medium, Letter spacing: 0.5
  TextStyle? get labelSmall => textTheme.labelSmall;
}

extension XDeviceSize on BuildContext {
  MediaQueryData get mediaQuery => Sizes.mediaQueryData(this);
  double get screenWidth => Sizes.screenWidth(this);
  double get screenHeight => Sizes.screenHeight(this);
  double get blockSizeHorizontal => Sizes.blockSizeHorizontal(this);
  double get blockSizeVertical => Sizes.blockSizeVertical(this);
  double get safeBlockHorizontal => Sizes.safeBlockHorizontal(this);
  double get safeBlockVertical => Sizes.safeBlockVertical(this);
}
