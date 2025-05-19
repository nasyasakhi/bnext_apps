import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../config/config.dart';
import '../../../../core/core.dart';
import '../../../../libraries/libraries.dart';



@RoutePage()
class RewardDetailPage extends StatelessWidget {
  const RewardDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: const PrimaryAppBar(
        title: 'Detail Hadiah',
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.grey,
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 24, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Voucher Lorem Ipsum 1',
                    style: context.titleMedium?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Gap(Sizes.p8),
                  Text(
                    '3000 Voucher Tersisa',
                    style: context.labelMedium?.copyWith(
                      color: AppColors.white,
                    ),
                  ),
                ],
              ),
            ),
            const Gap(Sizes.p24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Poin',
                    style: context.titleSmall?.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    '200',
                    style: context.titleLarge?.copyWith(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const Gap(Sizes.p12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Berlaku Sampai',
                    style: context.titleSmall?.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    '31/03/2025',
                    style: context.titleLarge?.copyWith(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const Gap(Sizes.p32),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Deskripsi',
                    style: context.titleLarge?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  const Gap(Sizes.p12),
                  Text(
                    'Lorem ipsum dolor sit amet consectetur. Elementum egestas facilisi neque eget ornare. Urna viverra volutpat nisi felis sollicitudin.',
                    style: context.bodySmall?.copyWith(
                      color: AppColors.white,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),
            const Gap(Sizes.p32),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Syarat Dan Ketentuan',
                    style: context.titleLarge?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const Gap(Sizes.p12),
                  Text(
                    'Lorem ipsum dolor sit amet consectetur. Elementum egestas facilisi neque eget ornare. Urna viverra volutpat nisi felis sollicitudin.',
                    style: context.bodySmall?.copyWith(
                      color: AppColors.white,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(20),
              child: SizedBox(
                width: double.infinity,
                height: 56,
                child: PrimaryButton(
                  text: 'Tukarkan Sekarang',
                  onPressed: () {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
