import 'package:bnext_fe/core/presentation/constants/sizes.dart';
import 'package:bnext_fe/core/presentation/extension/build_context_extension.dart';
import 'package:gap/gap.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import '../../../../../config/theme/theme.dart';
import '../../../../../libraries/libraries.dart';
import '../../../../../config/router/app_router.dart';

@RoutePage()
class BnextProductCoPage extends StatefulWidget {
  const BnextProductCoPage({super.key});

  @override
  State<BnextProductCoPage> createState() => _BnextProductCoPageState();
}

class _BnextProductCoPageState extends State<BnextProductCoPage> {
  final TextEditingController _messageController = TextEditingController();

  @override
  void dispose() {
    _messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: const PrimaryAppBar(
        enableBackButton: true,
        title: 'Check Out',
      ),
      body: SafeArea(
        child: CustomColumn(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          context.router
                              .push(const ProductDetailAddressRoute());
                        },
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: AppColors.backGroundSecondary,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: AppColors.primary3,
                              width: 1,
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  const Icon(Icons.location_on_outlined,
                                      color: Colors.white, size: 20),
                                  const Gap(Sizes.p8),
                                  Text(
                                    'Alamat Pengiriman',
                                    style: context.titleMedium?.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              const Gap(Sizes.p8),
                              Text(
                                'Lorem Ipsum Dolor Sit Amet Consectetur. Mauris Vitae Pretium Commodo Ipsum Elementum Varius Varius Vel Diam. Eget Interdum Velit Quam Tristique Tempus Non Turpis. Ut Morbi Pulvinar Cras Sed Vitae Quis Scelerisque Sem A.',
                                style: context.bodySmall?.copyWith(
                                  color: AppColors.white,
                                  fontWeight: FontWeight.w500,
                                  height: 1.5,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Gap(Sizes.p16),
                      Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: AppColors.backGroundSecondary,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: AppColors.primary3,
                            width: 1,
                          ),
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            const Gap(Sizes.p16),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Nama Produk',
                                    style: context.titleMedium?.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const Gap(Sizes.p4),
                                  Text(
                                    'Rp. 200.000',
                                    style: context.labelLarge?.copyWith(
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              'x 1 item',
                              style: context.labelLarge?.copyWith(
                                color: AppColors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Gap(Sizes.p16),
                      Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: AppColors.backGroundSecondary,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: AppColors.primary3,
                            width: 1,
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Opsi Pengiriman',
                                  style: context.titleMedium?.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    context.router
                                        .push(const ProductOngkirRoute());
                                  },
                                  child: Text(
                                    'Ubah',
                                    style: context.labelLarge?.copyWith(
                                      color: AppColors.primaryMain,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const Gap(Sizes.p8),
                            const Divider(
                              thickness: 0.5,
                              color: AppColors.white,
                            ),
                            const Gap(Sizes.p12),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Regular',
                                  style: context.labelLarge?.copyWith(
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  'Rp. 10.000',
                                  style: context.labelLarge?.copyWith(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            const Gap(Sizes.p2),
                            Text(
                              'Garansi Tiba: 9-12 Mar',
                              style: context.bodySmall?.copyWith(
                                color: AppColors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Gap(Sizes.p16),
                      Text(
                        'Pesan',
                        style: context.labelLarge?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Gap(Sizes.p8),
                      CustomTextFormField(
                        textController: _messageController,
                        maxLines: 4,
                        hint: 'Tinggalkan pesan disini',
                      ),
                      const Gap(Sizes.p16),
                      Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: AppColors.backGroundSecondary,
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(
                            color: AppColors.primary3,
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Voucher',
                                  style: context.labelLarge?.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    context.router
                                        .push(const ProductVoucherRoute());
                                  },
                                  child: Text(
                                    'Ubah',
                                    style: context.labelLarge?.copyWith(
                                      color: AppColors.primaryMain,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const Gap(Sizes.p4),
                            const Divider(
                              thickness: 0.5,
                              color: AppColors.white,
                            ),
                            const Gap(Sizes.p4),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Lorem ipsum Dolor Sit Amet',
                                  style: context.labelLarge?.copyWith(
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  '- Rp 20.000',
                                  style: context.labelLarge?.copyWith(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const Gap(Sizes.p16),
                      Text(
                        'Transaksi Melalui',
                        style: context.labelLarge?.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      const Gap(Sizes.p12),
                      GestureDetector(
                        onTap: () {
                          context.router.push(const PaymentMethodRoute());
                        },
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: AppColors.backGroundSecondary,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: AppColors.primary3,
                              width: 1,
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Indomaret',
                                    style: context.titleMedium?.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const Icon(
                                    Icons.arrow_right,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Gap(Sizes.p24),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Subtotal Produk',
                                style: context.labelLarge?.copyWith(
                                  color: AppColors.white,
                                ),
                              ),
                              Text(
                                'Rp 200.000',
                                style: context.labelLarge?.copyWith(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          const Gap(Sizes.p8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Subtotal Pengiriman',
                                style: context.labelLarge?.copyWith(
                                  color: AppColors.white,
                                ),
                              ),
                              Text(
                                'Rp 10.000',
                                style: context.labelLarge?.copyWith(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          const Gap(Sizes.p8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Voucher',
                                style: context.labelLarge?.copyWith(
                                  color: AppColors.white,
                                ),
                              ),
                              Text(
                                '- Rp 10.000',
                                style: context.labelLarge?.copyWith(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          const Gap(Sizes.p8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Biaya Layanan',
                                style: context.labelLarge?.copyWith(
                                  color: AppColors.white,
                                ),
                              ),
                              Text(
                                'Rp 1.000',
                                style: context.labelLarge?.copyWith(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          const Gap(Sizes.p16),
                          const Divider(color: Colors.white24),
                          const Gap(Sizes.p16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Total',
                                style: context.titleMedium?.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Rp 211.000',
                                style: context.titleMedium?.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Gap(Sizes.p16),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: PrimaryButton(
                text: 'Check Out',
                onPressed: () {
                  context.router.replaceAll(
                    [const MainRoute()],
                  );
                },
                width: double.infinity,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
