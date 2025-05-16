import 'package:bnext_fe/core/presentation/constants/sizes.dart';
import 'package:bnext_fe/core/presentation/extension/extension.dart';
import 'package:gap/gap.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import '../../../../libraries/libraries.dart';
import '../../../../config/theme/app_colors.dart';
import '../../../../config/router/app_router.dart';
import '../../../../libraries/components/card_widget/product_card.dart';

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
    'Semua',
    'Paket 1',
    'Paket 2',
    'Paket 3',
    'Paket 4'
  ];

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: _appBar(),
      body: SingleChildScrollView(
        child: CustomColumn(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildTabSelector(),
                  if (isPoinTab) ...[
                    const Gap(Sizes.p24),
                    _buildPointsCard(),
                    const Gap(Sizes.p32),
                    Text(
                      'Tukarkan Poin Kamu',
                      style: context.titleMedium?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Gap(Sizes.p16),
                    _buildFilterOptions()
                  ] else ...[
                    const Gap(Sizes.p32),
                    Row(
                      children: [
                        Text('1 Voucher',
                            style:
                                context.labelLarge?.toWeight(FontWeight.bold)),
                        const Gap(Sizes.p12),
                        Expanded(
                          child: Container(
                            height: 1,
                            color: AppColors.white,
                          ),
                        ),
                        const Gap(Sizes.p12),
                        const Icon(Icons.filter_alt_outlined,
                            size: 30, color: Colors.white),
                      ],
                    )
                  ]
                ],
              ),
            ),
            const Gap(Sizes.p28),
            GridView.count(
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              shrinkWrap: true,
              crossAxisCount: 2,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              childAspectRatio: 0.7,
              children: [
                ProductCard(
                    title: 'Lorem epsum',
                    description: '200 Poin',
                    description2: '3000 Voucher Tersedia',
                    onTap: () {
                      context.router.push(const RewardDetailRoute());
                    }),
                ProductCard(
                    title: 'Lorem epsum',
                    description: '200 Poin',
                    description2: '3000 Voucher Tersedia',
                    onTap: () {
                      context.router.push(const RewardDetailRoute());
                    }),
                ProductCard(
                    title: 'Lorem epsum',
                    description: '200 Poin',
                    description2: '3000 Voucher Tersedia',
                    onTap: () {
                      context.router.push(const RewardDetailRoute());
                    }),
                ProductCard(
                    title: 'Lorem epsum',
                    description: '200 Poin',
                    description2: '3000 Voucher Tersedia',
                    onTap: () {
                      context.router.push(const RewardDetailRoute());
                    }),
              ],
            ),
          ],
        ),
      ),
    );
  }

  AppBar _appBar() {
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
            child: const Icon(Icons.download_outlined,
                color: Colors.white, size: 20),
          ),
          onPressed: () {},
        ),
        const Gap(Sizes.p16),
      ],
    );
  }

  Widget _buildFilterOptions() {
    return SizedBox(
      height: 32,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: packages.length,
        separatorBuilder: (context, index) => const SizedBox(width: 12),
        itemBuilder: (context, index) {
          final filter = packages[index];
          final isSelected = _selectedFilter == filter;

          return InkWell(
              onTap: () {
                setState(() {
                  _selectedFilter = filter;
                });
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                decoration: BoxDecoration(
                  color:
                      isSelected ? AppColors.primaryMain : Colors.transparent,
                  borderRadius: BorderRadius.circular(20),
                  border:
                      isSelected ? null : Border.all(color: AppColors.white),
                ),
                child: Text(
                  filter,
                  style: context.labelSmall?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ));
        },
      ),
    );
  }

  Widget _buildTabSelector() {
    return Container(
      height: 48,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Colors.grey.shade700, width: 1),
      ),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isPoinTab = true;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  color: isPoinTab ? AppColors.primaryMain : Colors.transparent,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Center(
                  child: Text(
                    'Poin',
                    style: context.labelLarge?.copyWith(
                      fontWeight:
                          isPoinTab ? FontWeight.bold : FontWeight.normal,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isPoinTab = false;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  color:
                      !isPoinTab ? AppColors.primaryMain : Colors.transparent,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Center(
                  child: Text(
                    'Voucher Aktif',
                    style: context.labelLarge?.copyWith(
                      fontWeight:
                          !isPoinTab ? FontWeight.bold : FontWeight.normal,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPointsCard() {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.backGroundSecondary,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: AppColors.primary3,
          width: 1,
        ),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Poin Kamu',
            style: context.titleSmall?.copyWith(
              color: Colors.white,
            ),
          ),
          const Gap(Sizes.p8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '350 Poin',
                style: context.titleMedium?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Hangus Pada 31/03/2025',
                style: context.labelSmall
                    ?.copyWith(color: AppColors.white, fontSize: 10),
              ),
            ],
          ),
          const Divider(color: Colors.grey),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Keuntungan Member VIP',
                style: context.labelLarge?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
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
