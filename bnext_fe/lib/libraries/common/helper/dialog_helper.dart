import 'package:flutter/material.dart';

import '../../../config/config.dart';
import '../../../core/core.dart';

// gunanya dialog_helper adalah buat dipakai biar kita bisa munculin pop-up dialog dengan gampang dan reusable — kayak shortcut bikin AlertDialog, tapi lebih custom dan rapi.
class DialogHelper {
  static Future<void> showCommonDialog(
    BuildContext context, {
    required Widget child,
    bool barrierDismissible = true, //user bisa nutup dialog dgn klik area luar.
  }) =>
      showDialog(
        //buat munculin dialognya.
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
              insetPadding: const EdgeInsets.all(Sizes
                  .p24), //inset padding artinya jarak dari pinggir layarnya
              child: child, //isi dialognya yang dikirim sesuai parameter
            ),
          );
        },
      );
}
