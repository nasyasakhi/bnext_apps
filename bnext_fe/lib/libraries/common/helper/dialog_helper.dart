import 'package:bnext_fe/core/presentation/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../config/config.dart';

class DialogHelper {
  static Future<void> showCommonDialog(
    BuildContext context, {
    required Widget child,
    bool barrierDismissible = true,
  }) =>
      showDialog(
        context: context,
        barrierDismissible: barrierDismissible,
        builder: (BuildContext context) {
          return WillPopScope(
            onWillPop: () async => barrierDismissible,
            child: Dialog(
              backgroundColor: AppColors.primarySurface,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(Sizes.p16)),
              ),
              insetPadding: const EdgeInsets.all(Sizes.p24),
              child: child,
            ),
          );
        },
      );
}