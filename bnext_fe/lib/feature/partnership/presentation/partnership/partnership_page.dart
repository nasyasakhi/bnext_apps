import 'package:gap/gap.dart';
// import '../../../../core/core.dart';
import 'package:flutter/material.dart';
import '../../../../config/config.dart';
import 'package:auto_route/auto_route.dart';
import '../../../../libraries/libraries.dart';

@RoutePage()
class PartnershipPage extends StatelessWidget {
  const PartnershipPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: const PrimaryAppBar(
        title: 'Partnership',
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
                    'Promo Lorem Ipsum 1',
                    style: context.titleMedium?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
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
            ),
            const Gap(Sizes.p24),
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
                  onPressed: () {
                    context.router.maybePop();
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
