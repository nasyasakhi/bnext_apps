import 'package:bnext/config/theme/app_colors.dart';
import 'package:bnext/core/core.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class PartnershipTitle extends StatelessWidget {
  const PartnershipTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 24, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Promo Lorem Ipsum 1',
            style: context.titleMedium?.bold.white
          ),
          const Gap(Sizes.p8),
          Text(
            'Lorem lorem lorem',
            style: context.labelMedium?.copyWith(
              color: AppColors.white,
            ),
          ),
        ],
      ),
    );
  }
}