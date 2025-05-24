import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:bnext/config/config.dart';
import 'package:bnext/core/core.dart';
import 'package:bnext/libraries/libraries.dart';

@RoutePage()
class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  String _selectedFilter = 'Semua';
  final List<String> _filters = [
    'Semua',
    'Dalam Proses',
    'Berhasil',
    'Gagal',
  ];

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          context.appLang.transactionHistory,
          style: context.titleMedium?.semiBold
        ),
        centerTitle: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.file_download_sharp, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            const Gap(Sizes.p24),
            _buildFilterOptions(),
            const Gap(Sizes.p40),
            _buildPaymentSection(),
            const Gap(Sizes.p40),
            Expanded(
              child: ListView(
                children: [
                  _buildTransactionCard(
                    status: context.appLang.inProcess,
                    statusColor: AppColors.primaryMain,
                  ),
                  const Gap(Sizes.p16),
                  _buildTransactionCard(
                    status: context.appLang.inProcess,
                    statusColor: AppColors.primaryMain,
                  ),
                  const Gap(Sizes.p16),
                  _buildTransactionCard(
                    status: context.appLang.success,
                    statusColor: AppColors.primary2,
                  ),
                  const Gap(Sizes.p16),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFilterOptions() {
    return SizedBox(
      height: 35,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: _filters.length,
        separatorBuilder: (context, index) => const SizedBox(width: 12),
        itemBuilder: (context, index) {
          final filter = _filters[index];
          final isSelected = _selectedFilter == filter;

          return InkWell(
              onTap: () {
                setState(() {
                  _selectedFilter = filter;
                });
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: Sizes.p24, vertical: Sizes.p10),
                decoration: BoxDecoration(
                  color:
                      isSelected ? AppColors.primaryMain : Colors.transparent,
                  borderRadius: BorderRadius.circular(20),
                  border:
                      isSelected ? null : Border.all(color: AppColors.white),
                ),
                child: Text(
                  filter,
                  style: context.labelSmall?.semiBold,                  
                ),
              ),
            );
        },
      ),
    );
  }

  Widget _buildPaymentSection() {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.backGroundSecondary,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: AppColors.primary3),
      ),
      child: ListTile(
        leading: Container(
          padding: const EdgeInsets.all(8),
          child: const Icon(
            Icons.account_balance_wallet_sharp,
            color: Colors.white,
          ),
        ),
        title: Text(
          context.appLang.bpayTransaction,
          style: context.titleSmall?.semiBold
        ),
        trailing: const Icon(
          Icons.chevron_right,
          color: Colors.white,
        ),
        onTap: () {},
      ),
    );
  }

  Widget _buildTransactionCard(
      {required String status, required Color statusColor}) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.backGroundSecondary,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: AppColors.primary3)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: AssetImage('assets/images/smartbox-premium.png'), // pastikan path benar
                fit: BoxFit.cover,
              ),
            ),
            ),
            const Gap(Sizes.p16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          '1 Paket Silver VIP',
                          style: context.labelLarge?.copyWith(
                            color: AppColors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Text(
                        'Rp. 200.000',
                        style: context.labelMedium?.copyWith(
                          color: AppColors.grey,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '1 Item',
                    style: context.labelSmall?.copyWith(
                      color: AppColors.white,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '5 Maret 09:25',
                        style: context.labelSmall?.copyWith(
                          color: AppColors.white,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: statusColor,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Text(
                          status,
                          style: context.labelSmall?.copyWith(
                            fontSize: 10,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
