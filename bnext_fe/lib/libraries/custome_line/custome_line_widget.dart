import 'package:flutter/material.dart';
import '../../../config/theme/app_colors.dart';

class CustomeLineWidget extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = AppColors.neutral100
      ..strokeWidth = 3;

    var max = size.height;
    var dashHeight = 2;
    var dashSpace = 4;
    double startY = 1;

    while (startY < max) {
      canvas.drawLine(Offset(0, startY), Offset(0, startY + dashHeight), paint);
      startY += dashHeight + dashSpace;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
