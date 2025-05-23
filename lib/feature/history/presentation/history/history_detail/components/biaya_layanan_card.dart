import 'package:bnext/config/config.dart';
import 'package:bnext/core/core.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BiayaLayananCard extends StatelessWidget {
  const BiayaLayananCard({
    super.key,
    required this.context,
  });

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 27, vertical: 19),
      margin: const EdgeInsets.only(top: 15),
      decoration: BoxDecoration(
        color: AppColors.buttonPrimarylight,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Total Biaya Layanan',
            style: context.bodyMedium,
          ),
          const Gap(Sizes.p8),
          Text(
            'Rp. 125.000',
            style: context.titleLarge
                ?.toWeight(FontWeight.w600)
                .toColor(AppColors.primaryMain),
          ),
        ],
      ),
    );
  }
}