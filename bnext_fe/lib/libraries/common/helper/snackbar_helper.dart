import 'package:bnext_fe/core/presentation/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../config/config.dart';

class SnackbarHelper {
  static void showInformation(
    BuildContext context,
    String message, {
    String? title,
    EdgeInsetsGeometry? margin,
    bool dismissible = true,
  }) {
    ScaffoldMessenger.of(context)
      ..clearSnackBars()
      ..showSnackBar(
        SnackBar(
          content: Text(message),
          backgroundColor: AppColors.infoMain,
          behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Sizes.p8),
          ),
          margin: const EdgeInsets.all(16).add(margin ?? EdgeInsets.zero),
          duration: dismissible
              ? const Duration(milliseconds: 4000)
              : const Duration(hours: 1),
          dismissDirection: DismissDirection.startToEnd,
        ),
      );
  }

  static void showSuccess(
    BuildContext context,
    String message, {
    String? title,
    EdgeInsetsGeometry? margin,
    bool dismissible = true,
  }) {
    ScaffoldMessenger.of(context)
      ..clearSnackBars()
      ..showSnackBar(
        SnackBar(
          content: Text(message),
          backgroundColor: AppColors.successMain,
          behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Sizes.p8),
          ),
          margin: const EdgeInsets.all(16).add(margin ?? EdgeInsets.zero),
          duration: dismissible
              ? const Duration(milliseconds: 4000)
              : const Duration(hours: 1),
          dismissDirection: DismissDirection.startToEnd,
        ),
      );
  }

  static void showError(
    BuildContext context,
    String message, {
    String? title,
    VoidCallback? retry,
    EdgeInsetsGeometry? margin,
    bool dismissible = true,
  }) {
    ScaffoldMessenger.of(context)
      ..clearSnackBars()
      ..showSnackBar(
        SnackBar(
          content: Text(
            message,
          ),
          backgroundColor: AppColors.dangerMain,
          behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Sizes.p8),
          ),
          margin: const EdgeInsets.all(16).add(margin ?? EdgeInsets.zero),
          action: retry != null
              ? SnackBarAction(
                  label: 'Ulangi',
                  onPressed: retry,
                  textColor: AppColors.neutral10,
                )
              : null,
          duration: dismissible
              ? const Duration(milliseconds: 4000)
              : const Duration(hours: 1),
          dismissDirection: DismissDirection.startToEnd,
        ),
      );
  }
}