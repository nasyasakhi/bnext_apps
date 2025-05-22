import 'package:bnext/feature/reward/presentation/reward/components/fortune_wheel.dart';
import 'package:bnext/feature/reward/presentation/spin_wheel_controller.dart';
import 'package:flutter/material.dart';
import 'package:bnext/config/theme/app_colors.dart';

Future<void> showSpinWheelDialog(BuildContext context) async {
  final controller = SpinWheelController (rewards: [10, 20, 30, 40, 50, 100]);
  int? result;

  await showDialog(
    context: context,
    builder: (context) {
      return StatefulBuilder(
        builder: (context, setState) {
          return AlertDialog(
            backgroundColor: AppColors.backGroundSecondary,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            contentPadding: const EdgeInsets.all(16),
            content: SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Putar Roda Keberuntungan!',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 16),
                  FortuneWheelWidget(
                    controller: controller,
                    onResult: (index) {
                      setState(() {
                        result = controller.rewards[index];
                      });
                    },
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      controller.spin();
                      // Jangan ambil result langsung di sini
                    },
                    child: const Text(
                      "Putar Sekarang",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  if (result != null) ...[
                    const SizedBox(height: 12),
                    Text(
                      "🎉 Kamu mendapatkan $result poin!",
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ],
              ),
            ),
          );
        },
      );
    },
  );

  controller.dispose();
}