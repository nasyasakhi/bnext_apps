import 'package:gap/gap.dart';
import '../../../../../core/core.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import '../../../../../config/theme/theme.dart';
import '../../../../../libraries/libraries.dart';
import '../../../../../config/router/app_router.dart';

@RoutePage()
class ProductOngkirPage extends StatelessWidget {
  const ProductOngkirPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: const PrimaryAppBar(
        title: 'Alamat Saya',
        enableBackButton: true,
      ),
      body: CustomColumn(
        children: [
          const Expanded(
            child: SingleChildScrollView(
              child: CustomColumn(
                padding: EdgeInsets.all(16),
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  OngkirCard(
                      isSelected: true,
                      tittlePromo: 'Gratis Ongkir Rp 10.000',
                      dueDate: '11 Maret',
                      minimalOrder: 'Rp 10.000'),
                  Gap(Sizes.p32),
                  OngkirCard(
                    tittlePromo: 'Gratis Ongkir Rp 10.000',
                    dueDate: '11 Maret',
                    minimalOrder: 'Rp 10.000',
                  ),
                  Gap(Sizes.p32),
                  OngkirCard(
                      tittlePromo: 'Gratis Ongkir Rp 10.000',
                      dueDate: '11 Maret',
                      minimalOrder: 'Rp 10.000'),
                  Gap(Sizes.p32),

                  // const Spacer(),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24),
            child: PrimaryButton(
                width: double.infinity,
                text: 'Konfirmasi',
                onPressed: () {
                  context.router.maybePop();
                }),
          ),
        ],
      ),
    );
  }
}

class OngkirCard extends StatelessWidget {
  final String tittlePromo;
  final String dueDate;
  final String minimalOrder;
  final bool isSelected;

  const OngkirCard({
    super.key,
    required this.tittlePromo,
    required this.dueDate,
    required this.minimalOrder,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          color:
              isSelected ? AppColors.primary3 : AppColors.backGroundSecondary,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: AppColors.primary2)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(tittlePromo,
              style: context.labelLarge?.copyWith(
                  color: AppColors.white, fontWeight: FontWeight.bold)),
          const Gap(Sizes.p12),
          Text('Minimal Belanja $minimalOrder',
              style: context.bodySmall?.copyWith(color: AppColors.white)),
          const Gap(Sizes.p12),
          Text('Belaku Sampai $dueDate',
              style: context.bodySmall?.copyWith(color: AppColors.white)),
        ],
      ),
    );
  }
}
