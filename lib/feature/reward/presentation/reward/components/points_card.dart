import 'package:bnext/config/theme/app_colors.dart';
import 'package:bnext/core/core.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class PointsCard extends StatelessWidget {
  const PointsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.backGroundSecondary,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.primary3, width: 1),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Poin Kamu', style: context.titleSmall?.copyWith(color: Colors.white)),
          const Gap(Sizes.p8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('350 Poin',
                  style: context.titleMedium?.copyWith(color: Colors.white, fontWeight: FontWeight.bold)),
              Text('Hangus Pada 31/03/2025',
                  style: context.labelSmall?.copyWith(color: AppColors.white, fontSize: 10)),
            ],
          ),
          const Divider(color: Colors.grey),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Keuntungan Member VIP',
                  style: context.labelLarge?.copyWith(color: Colors.white, fontWeight: FontWeight.bold)),
              IconButton(
                icon: const Icon(Icons.chevron_right, color: Colors.white),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}