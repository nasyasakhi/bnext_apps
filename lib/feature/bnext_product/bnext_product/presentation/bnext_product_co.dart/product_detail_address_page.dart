import 'package:gap/gap.dart';
import '../../../../../core/core.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import '../../../../../config/theme/theme.dart';
import '../../../../../libraries/libraries.dart';
import '../../../../../config/router/app_router.dart';

@RoutePage()
class ProductDetailAddressPage extends StatelessWidget {
  const ProductDetailAddressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: const PrimaryAppBar(
        title: 'Alamat Saya',
        enableBackButton: true,
      ),
      body: CustomColumn(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: CustomColumn(
                padding: const EdgeInsets.all(16),
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AddressCard(
                    name: 'Mascot Anjar',
                    phone: '+62-8123-4567-7890',
                    address:
                        'Lorem ipsum dolor sit amet consectetur. Mauris vitae pretium commodo ipsum elementum varius varius vel diam. Eget interdum velit quam tristique tempus non turpis. Ut morbi pulvinar cras sed vitae quis scelerisque sem a.',
                    isPrimary: true,
                    backgroundColor: AppColors.primary2,
                  ),
                  const Gap(Sizes.p32),
                  const AddressCard(
                    name: 'Mascot Anjar',
                    phone: '+62-8123-4567-7890',
                    address:
                        'Lorem ipsum dolor sit amet consectetur. Mauris vitae pretium commodo ipsum elementum varius varius vel diam. Eget interdum velit quam tristique tempus non turpis. Ut morbi pulvinar cras sed vitae quis scelerisque sem a.',
                    isPrimary: false,
                    backgroundColor: AppColors.backGroundSecondary,
                  ),
                  const Gap(Sizes.p24),
                  InkWell(
                    onTap: () {
                      context.router.push(const ProductAddAddressRoute());
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 16),
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.primary3),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        children: [
                          const Icon(Icons.add_comment_outlined,
                              color: AppColors.white),
                          const Gap(Sizes.p12),
                          Expanded(
                            child: Text('Tambah Alamat Baru',
                                style: context.labelLarge
                                    ?.copyWith(color: AppColors.white)),
                          ),
                          const Icon(Icons.arrow_forward_ios,
                              color: AppColors.white, size: 16),
                        ],
                      ),
                    ),
                  ),
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

class AddressCard extends StatelessWidget {
  final String name;
  final String phone;
  final String address;
  final bool isPrimary;
  final Color backgroundColor;

  const AddressCard({
    super.key,
    required this.name,
    required this.phone,
    required this.address,
    required this.isPrimary,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.primary3),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(Icons.location_on_outlined, color: AppColors.white),
              const Gap(Sizes.p8),
              Text(name,
                  style: context.labelLarge?.copyWith(color: AppColors.white)),
              const Gap(Sizes.p4),
              Text(phone,
                  style: context.bodyMedium?.copyWith(color: AppColors.white)),
            ],
          ),
          const Gap(Sizes.p12),
          Text(address,
              style: context.bodySmall?.copyWith(color: AppColors.white)),
          if (isPrimary) ...[
            const Gap(Sizes.p8),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: AppColors.primaryMain,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Text('Utama',
                  style: context.labelSmall?.copyWith(color: Colors.white)),
            ),
          ]
        ],
      ),
    );
  }
}
