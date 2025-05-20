import 'package:bnext/core/presentation/constants/sizes.dart';
import 'package:bnext/feature/profile/presentation/profile/components/state_items.dart';
import 'package:bnext/libraries/common/constants/app_resources.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BuildQuickStatsRow extends StatelessWidget {
  const BuildQuickStatsRow({
    super.key,
    required this.context,
  });

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          StateItems(context: context, icon: AppIcons.walletIcon, label: 'Dompet Saya', value: '0'),
          const Gap(Sizes.p32),
          StateItems(context: context, icon: AppIcons.rewardIcon, label: 'Poin Saya', value: '0'),
        ],
      ),
    );
  }
}