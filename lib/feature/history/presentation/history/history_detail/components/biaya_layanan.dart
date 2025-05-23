import 'package:bnext/config/theme/app_colors.dart';
import 'package:bnext/core/core.dart';
import 'package:bnext/feature/history/presentation/history/history_detail/components/biaya_layanan_card.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

List<Widget> biayaLayanan(BuildContext context) {
    return [
      Text('Biaya Layanan',
          style: context.titleMedium?.copyWith(
            color: AppColors.primaryMain,
            fontWeight: FontWeight.w600,
          )),
      BiayaLayananCard(context: context),
      const Gap(Sizes.p24),
    ];
}
