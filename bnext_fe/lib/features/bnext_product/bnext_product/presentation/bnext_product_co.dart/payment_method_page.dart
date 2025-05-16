import 'package:bnext_fe/core/presentation/constants/sizes.dart';
import 'package:bnext_fe/core/presentation/extension/build_context_extension.dart';
import 'package:bnext_fe/core/presentation/extension/extension.dart';
import 'package:gap/gap.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import '../../../../../config/theme/theme.dart';
import '../../../../../libraries/libraries.dart';
import '../../../../shared/components/payment_item.dart';
import '../../../../../libraries/components/navigator/navigator_widget.dart';

@RoutePage()
class PaymentMethodPage extends StatelessWidget {
  const PaymentMethodPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: const PrimaryAppBar(
        title: 'Metode Pembayaran',
        enableBackButton: true,
      ),
      body: SafeArea(
        child: CustomColumn(
          children: [
            const Expanded(
              child: SingleChildScrollView(
                child: CustomColumn(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Gap(Sizes.p36),
                    NavigatorWidget(
                        isPayment: true,
                        tittle: 'Dengan Bpay',
                        description: 'Rp 100.000'),
                    Gap(Sizes.p36),
                    _PaymentSection(
                      title: 'Dengan Bank',
                      itemLabel: 'Bank',
                    ),
                    Gap(Sizes.p36),
                    _PaymentSection(
                      title: 'Dengan Uang Cash',
                      itemLabel: 'Toko',
                    ),
                    Gap(Sizes.p36),
                    _PaymentSection(
                      title: 'Dengan Kartu Kredit',
                      itemLabel: 'Toko',
                    ),
                    Gap(Sizes.p36),
                    NavigatorWidget(
                        isPayment: true,
                        tittle: 'Bayar Di Tempat',
                        description: 'Lorem sipem'),
                    Gap(Sizes.p20),
                  ],
                ),
              ),
            ),
            const Gap(Sizes.p12),
            Padding(
              padding: const EdgeInsets.all(24),
              child: PrimaryButton(
                width: double.infinity,
                text: 'Konfirmasi',
                onPressed: () {
                  context.router.maybePop();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _PaymentSection extends StatelessWidget {
  final String title;
  final String itemLabel;

  const _PaymentSection({required this.title, required this.itemLabel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.primary2),
        color: AppColors.backGroundSecondary,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: context.bodyLarge?.toWeight(FontWeight.bold),
              ),
              Text(
                'Lihat Semua',
                style: context.labelSmall?.copyWith(
                    color: AppColors.primaryMain,
                    decoration: TextDecoration.underline,
                    decorationColor: AppColors.primaryMain,
                    decorationThickness: 2),
              ),
            ],
          ),
          const Gap(16),
          GridView.builder(
            shrinkWrap: true,
            itemCount: 8,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              mainAxisSpacing: 12,
              crossAxisSpacing: 12,
              childAspectRatio: 0.8,
            ),
            itemBuilder: (context, index) => PaymentItem(title: itemLabel),
          ),
        ],
      ),
    );
  }
}
