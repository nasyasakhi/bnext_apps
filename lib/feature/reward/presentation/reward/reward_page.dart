import 'package:bnext/feature/reward/presentation/reward/components/app_bar_reward.dart';
import 'package:bnext/feature/reward/presentation/reward/components/filter_option.dart';
import 'package:bnext/feature/reward/presentation/reward/components/points_card.dart';
import 'package:bnext/feature/reward/presentation/reward/components/reward_grid.dart';
import 'package:bnext/feature/reward/presentation/reward/components/tab_selector.dart';
import 'package:gap/gap.dart';
import 'package:bnext/core/core.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:bnext/libraries/libraries.dart';
import 'package:bnext/config/theme/app_colors.dart';

@RoutePage()
class RewardPage extends StatefulWidget {
  const RewardPage({super.key});

  @override
  State<RewardPage> createState() => _RewardPageState();
}

class _RewardPageState extends State<RewardPage> {
  bool isPoinTab = true;
  String _selectedFilter = 'Semua';

  final List<String> packages = [
    'Semua', 'Paket 1', 'Paket 2', 'Paket 3', 'Paket 4'
  ];

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: const AppBarReward(),
      body: SingleChildScrollView(
        child: CustomColumn(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TabSelector(
                    isPoinTab: isPoinTab,
                    onTabChanged: (value) {
                      setState(() {
                        isPoinTab = value;
                      });
                    },
                  ),
                  const Gap(Sizes.p24),
                  if (isPoinTab) ...[
                    const PointsCard(),
                    const Gap(Sizes.p32),
                    Text(
                      context.appLang.redeemYourPoints,
                      style: context.titleMedium?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Gap(Sizes.p16),
                    FilterOptions(
                      selectedFilter: _selectedFilter,
                      packages: packages,
                      onSelected: (filter) {
                        setState(() {
                          _selectedFilter = filter;
                        });
                      },
                    )
                  ] else ...[
                    const Gap(Sizes.p32),
                    Row(
                      children: [
                        Text('1 Voucher',
                            style: context.labelLarge?.toWeight(FontWeight.bold)),
                        const Gap(Sizes.p12),
                        Expanded(
                          child: Container(
                            height: 1,
                            color: AppColors.white,
                          ),
                        ),
                        const Gap(Sizes.p12),
                        const Icon(Icons.filter_alt_outlined, size: 30, color: Colors.white),
                      ],
                    )
                  ],
                ],
              ),
            ),
            const Gap(Sizes.p28),
            const RewardGrid(),
          ],
        ),
      ),
    );
  }
}