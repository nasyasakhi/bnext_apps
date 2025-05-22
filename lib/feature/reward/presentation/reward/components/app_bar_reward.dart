import 'package:bnext/core/core.dart';
import 'package:bnext/feature/reward/presentation/dialog/spin_wheel_dialog.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AppBarReward extends StatelessWidget implements PreferredSizeWidget {
  const AppBarReward({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Text(
        'Reward',
        style: context.titleMedium?.copyWith(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: false,
      actions: [
        IconButton(
          icon: Container(
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 2),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Icon(Icons.casino, color: Colors.white, size: 20),
          ),
          onPressed: () {showSpinWheelDialog(context);},
        ),
        const Gap(16),
      ],
    );
  }
}