import 'package:bnext/feature/reward/spin_wheel_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';

class FortuneWheelWidget extends StatelessWidget {
  final SpinWheelController controller;
  final void Function(int selected)? onResult;

  const FortuneWheelWidget({
    super.key,
    required this.controller,
    this.onResult,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: 200,
      child: FortuneWheel(
        selected: controller.stream,
        items: controller.rewards.map((point) {
          final color = Colors.primaries[
              controller.rewards.indexOf(point) % Colors.primaries.length];
          return FortuneItem(
            child: Text(
              "$point",
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            style: FortuneItemStyle(
              color: color,
              borderColor: Colors.white,
              borderWidth: 2,
            ),
          );
        }).toList(),
        onAnimationEnd: () {
          if (controller.lastResult != null) {
            final selectedIndex = controller.rewards.indexOf(controller.lastResult!);
            onResult?.call(selectedIndex);
          }
        },
      ),
    );
  }
}