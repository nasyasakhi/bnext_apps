import 'package:auto_route/auto_route.dart';
import 'package:bnext/feature/bnext_product/bnext_product/data/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../config/router/app_router.dart';
import '../../../../../config/theme/theme.dart';
import '../../../../../core/core.dart';
import '../../../../../libraries/libraries.dart';

@RoutePage()
class OttProductOrderPage extends StatelessWidget {
    final ProductModel product;

  const OttProductOrderPage({super.key, required this.product});

  void _showVoucherModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (_) => const _VoucherModal(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: const PrimaryAppBar(
        title: 'Detail Ott Channels',
        enableBackButton: true,
      ),
      body: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Image.network(
                product.images.isNotEmpty
                    ? 'http://172.16.4.105:4000/${product.images.first}'
                    : 'https://via.placeholder.com/150',
                fit: BoxFit.cover,
              )
              ),
              const Gap(Sizes.p16),
              Text(product.name,
                  style: context.titleSmall?.toWeight(FontWeight.bold)),
              const Gap(Sizes.p4),
              Text(product.name,
                  style: context.bodySmall?.toWeight(FontWeight.w500)),
               const Gap(Sizes.p40),
              Text('Tentang Aplikasi',
                  style: context.titleSmall?.toWeight(FontWeight.bold)),
              const Gap(Sizes.p4),
              Text(
                  product.description,
                  style: context.bodySmall?.toWeight(FontWeight.w500)),
              const Gap(Sizes.p40),
              Text('Tentang Aplikasi',
                  style: context.titleSmall?.toWeight(FontWeight.bold)),
              const Gap(Sizes.p12),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(4, (index) => _paketItem(context)),
                ),
              ),
              const Gap(Sizes.p40),
              Text('Syarat Dan Ketentuan',
                  style: context.titleSmall?.toWeight(FontWeight.bold)),
              const Gap(Sizes.p4),
              Text(
                  product.stock,
                  style: context.bodySmall?.toWeight(FontWeight.w500)),
              const SizedBox(height: 32), // atau ukuran sesuai kebutuhan

              Center(
                child: PrimaryButton(
                  text: 'Beli Sekarang',
                  onPressed: () {
                    _showVoucherModal(context);
                  },
                  width: MediaQuery.of(context).size.width * 0.8,
                ),
              )
            ],
          ),
        ),
    );
  }

  Widget _paketItem(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(
        color: AppColors.backGroundSecondary,
        border: Border.all(color: AppColors.primary3),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Paket', style: context.labelMedium?.toWeight(FontWeight.bold)),
          Text('Rp 100.000',
              style: context.labelSmall?.toWeight(FontWeight.w500)),
        ],
      ),
    );
  }
}

class _VoucherModal extends StatelessWidget {
  const _VoucherModal();

  void _showConfirmModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (_) => const _ConfirmModal(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: AppColors.backGroundSecondary,
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              width: 40,
              height: 4,
              decoration: BoxDecoration(
                color: Colors.grey[600],
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),
          const Gap(Sizes.p16),
          Text('Voucher Lorem Ipsum 1',
              style: context.titleMedium?.toWeight(FontWeight.bold)),
          Text('3000 Voucher Tersisa', style: context.bodySmall),
          const Gap(Sizes.p16),
          Wrap(
            spacing: 24,
            runSpacing: 24,
            children: List.generate(
                4, (index) => _voucherBox(context, selected: index == 0)),
          ),
          const Gap(Sizes.p24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: [
                PrimaryButton(
                  text: 'Konfirmasi',
                  onPressed: () => _showConfirmModal(context),
                  width: double.infinity,
                ),
                SecondaryButton(
                  width: double.infinity,
                  backgroundColor: Colors.transparent,
                  onPressed: () => context.router.maybePop(),
                  child: Text(
                    'Batal',
                    style: context.labelMedium,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _voucherBox(BuildContext context, {bool selected = false}) {
    return Container(
      width: 170,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: selected ? AppColors.primary2 : Colors.transparent,
        border: Border.all(color: Colors.white30),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Paket', style: context.labelSmall?.toWeight(FontWeight.bold)),
          Text('Rp 100.000', style: context.labelSmall),
        ],
      ),
    );
  }
}

class _ConfirmModal extends StatelessWidget {
  const _ConfirmModal();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: AppColors.backGroundSecondary,
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              width: 40,
              height: 4,
              decoration: BoxDecoration(
                color: Colors.grey[600],
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),
          const Gap(Sizes.p16),
          Text('Paket', style: context.titleMedium?.toWeight(FontWeight.bold)),
          Text('Lorem Ipsum', style: context.labelMedium),
          const Gap(Sizes.p16),
          Text('Transaksi Melalui', style: context.labelLarge),
          const Gap(Sizes.p16),
          GestureDetector(
            onTap: () => context.router.push(const PaymentMethodRoute()),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              height: 48,
              decoration: BoxDecoration(
                color: AppColors.primary2,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Indomaret',
                      style: context.bodyMedium?.toWeight(FontWeight.bold)),
                  const Icon(Icons.keyboard_arrow_down_rounded,
                      color: Colors.white),
                ],
              ),
            ),
          ),
          const Gap(Sizes.p16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Biaya Admin', style: context.titleMedium),
              Text('Rp 1.000', style: context.titleMedium),
            ],
          ),
          const Gap(Sizes.p4),
          const Divider(color: AppColors.white, thickness: 0.5),
          const Gap(Sizes.p4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Total', style: context.titleMedium),
              Text('Rp 110.000', style: context.titleMedium),
            ],
          ),
          const Gap(Sizes.p24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: [
                PrimaryButton(
                  text: 'Tukar Sekarang',
                  onPressed: () {
                    context.router.maybePop();
                    context.router.maybePop();
                  },
                  width: double.infinity,
                ),
                SecondaryButton(
                  width: double.infinity,
                  backgroundColor: Colors.transparent,
                  onPressed: () => context.router.maybePop(),
                  child: Text(
                    'Batal',
                    style: context.labelMedium,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
