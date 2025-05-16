import 'package:gap/gap.dart';
import '../../../../core/core.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import '../../../../libraries/libraries.dart';
import '../../../../config/router/app_router.dart';
import '../../../../config/theme/app_colors.dart';
import '../../../../libraries/components/button/primary_button.dart';

import '../../../../libraries/components/button/secondary_button.dart';

@RoutePage()
class VideoAppsPage extends StatefulWidget {
  const VideoAppsPage({super.key});

  @override
  State<VideoAppsPage> createState() => _VideoAppsPageState();
}

class _VideoAppsPageState extends State<VideoAppsPage> {
  final List<Map<String, dynamic>> _subscriptionPackages = [
    {
      'title': 'Platinum',
      'price': '100.000',
      'benefit':
          'Lorem ipsum dolor sit amet consectetur. Elementum egestas facilisi neque eget ornare. Urna viverra volutpat nisi felis sollicitudin.',
    },
    {
      'title': 'Silver',
      'price': '100.000',
      'benefit':
          'Lorem ipsum dolor sit amet consectetur. Elementum egestas facilisi neque eget ornare. Urna viverra volutpat nisi felis sollicitudin.',
    },
    {
      'title': 'Gold',
      'price': '100.000',
      'benefit':
          'Lorem ipsum dolor sit amet consectetur. Elementum egestas facilisi neque eget ornare. Urna viverra volutpat nisi felis sollicitudin.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: CustomColumn(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildNetflixBanner(),
            const Gap(Sizes.p16),
            _buildNetflixTitle(),
            const Gap(Sizes.p24),
            _buildAboutSection(),
            const Gap(Sizes.p24),
            _buildSubscriptionTitle(),
            const Gap(Sizes.p16),
            ..._buildSubscriptionPackages(),
            const Gap(Sizes.p32),
            _buildTermsAndConditions(),
            const Gap(Sizes.p40),
            _buildBuyNowButton(),
            const Gap(Sizes.p32),
          ],
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      title: Text(
        'Netflix',
        style: context.titleMedium?.copyWith(
          color: AppColors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      leading: IconButton(
        icon: const Icon(Icons.arrow_back, color: AppColors.white),
        onPressed: () => context.router.pop(),
      ),
    );
  }

  Widget _buildNetflixBanner() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        height: 160,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }

  Widget _buildNetflixTitle() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Netflix',
            style: context.titleMedium?.copyWith(
              color: AppColors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Gap(Sizes.p4),
          Text(
            'Lorem ipsum',
            style: context.bodySmall?.copyWith(
              color: AppColors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAboutSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Tentang Aplikasi',
            style: context.titleSmall?.copyWith(
              color: AppColors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Gap(Sizes.p8),
          Text(
            'Lorem ipsum dolor sit amet consectetur. Elementum egestas facilisi neque eget ornare. Urna viverra volutpat nisi felis sollicitudin.',
            style: context.bodySmall?.copyWith(
              color: AppColors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSubscriptionTitle() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Text(
        'Paket Langganan',
        style: context.titleSmall?.copyWith(
          color: AppColors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  List<Widget> _buildSubscriptionPackages() {
    return _subscriptionPackages.map((package) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: AppColors.backGroundSecondary,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: AppColors.primary3),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    package['title'],
                    style: context.titleSmall?.copyWith(
                      color: AppColors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Gap(Sizes.p8),
                  Text(
                    '| ${package['price']}',
                    style: context.bodyMedium?.copyWith(
                      color: AppColors.white,
                    ),
                  ),
                ],
              ),
              const Gap(Sizes.p12),
              Text(
                'Benefit',
                style: context.labelLarge?.copyWith(
                  color: AppColors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Gap(Sizes.p4),
              Text(
                package['benefit'],
                style: context.bodySmall?.copyWith(
                  color: AppColors.white,
                ),
              ),
            ],
          ),
        ),
      );
    }).toList();
  }

  Widget _buildTermsAndConditions() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Syarat Dan Ketentuan',
            style: context.titleSmall?.copyWith(
              color: AppColors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Gap(Sizes.p8),
          Text(
            'Lorem ipsum dolor sit amet consectetur. Elementum egestas facilisi neque eget ornare. Urna viverra volutpat nisi felis sollicitudin.',
            style: context.bodySmall?.copyWith(
              color: AppColors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBuyNowButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 34.0),
      child: PrimaryButton(
        width: double.infinity,
        text: 'Beli Sekarang',
        onPressed: () => _showPaymentModal(),
        backgroundColor: AppColors.primaryMain,
      ),
    );
  }

  void _showPaymentModal() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => const PaymentBottomSheet(
        packageTitle: 'Platinum',
        packageType: 'Netflix',
        price: '100.000',
        totalPrice: '110.000',
        adminFee: '1.000',
      ),
    );
  }
}

class PaymentBottomSheet extends StatefulWidget {
  final String packageTitle;
  final String packageType;
  final String price;
  final String adminFee;
  final String totalPrice;

  const PaymentBottomSheet({
    super.key,
    required this.packageTitle,
    required this.packageType,
    required this.price,
    required this.adminFee,
    required this.totalPrice,
  });

  @override
  State<PaymentBottomSheet> createState() => _PaymentBottomSheetState();
}

class _PaymentBottomSheetState extends State<PaymentBottomSheet> {
  String _selectedPaymentMethod = 'Indomaret';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: const BoxDecoration(
        color: AppColors.backGroundSecondary,
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 40,
            height: 4,
            margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.4),
            decoration: BoxDecoration(
              color: AppColors.grey,
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          const Gap(Sizes.p24),
          _buildPackageHeader(),
          const Gap(Sizes.p16),
          _buildBenefitSection(),
          const Gap(Sizes.p24),
          _buildPaymentMethodSection(),
          const Gap(Sizes.p16),
          _buildCostSummary(),
          const Gap(Sizes.p24),
          _buildActionButtons(),
        ],
      ),
    );
  }

  Widget _buildPackageHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${widget.packageTitle} | ${widget.packageType}',
              style: context.titleSmall?.copyWith(
                color: AppColors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Gap(Sizes.p4),
            Text(
              'Rp ${widget.price}',
              style: context.bodyMedium?.copyWith(
                color: AppColors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildBenefitSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Benefit',
          style: context.labelLarge?.copyWith(
            color: AppColors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Gap(Sizes.p8),
        Text(
          'Lorem ipsum dolor sit amet consectetur. Elementum egestas facilisi neque eget ornare. Urna viverra volutpat nisi felis sollicitudin.',
          style: context.bodySmall?.copyWith(
            color: AppColors.white,
          ),
        ),
      ],
    );
  }

  Widget _buildPaymentMethodSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Transaksi Melalui',
          style: context.labelLarge?.copyWith(
            color: AppColors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Gap(Sizes.p8),
        GestureDetector(
          onTap: () {
            context.router.push(const PaymentMethodRoute());
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: BoxDecoration(
              color: AppColors.primary2,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  _selectedPaymentMethod,
                  style: context.bodyMedium?.copyWith(
                    color: AppColors.white,
                  ),
                ),
                const Icon(
                  Icons.keyboard_arrow_down,
                  color: AppColors.white,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildCostSummary() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Biaya Admin',
              style: context.bodyMedium?.copyWith(
                color: AppColors.white,
              ),
            ),
            Text(
              'Rp ${widget.adminFee}',
              style: context.bodyMedium?.copyWith(
                color: AppColors.white,
              ),
            ),
          ],
        ),
        const Gap(Sizes.p12),
        const Divider(color: AppColors.white),
        const Gap(Sizes.p12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Total',
              style: context.bodyLarge?.copyWith(
                color: AppColors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Rp ${widget.totalPrice}',
              style: context.bodyLarge?.copyWith(
                color: AppColors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildActionButtons() {
    return CustomColumn(
      padding: const EdgeInsets.symmetric(horizontal: 34),
      children: [
        PrimaryButton(
          width: double.infinity,
          text: 'Beli Sekarang',
          onPressed: () {
            // Handle buy now action
            Navigator.pop(context);
          },
          backgroundColor: AppColors.primaryMain,
        ),
        const Gap(Sizes.p12),
        SecondaryButton(
          width: double.infinity,
          text: 'Batal',
          onPressed: () => Navigator.pop(context),
          backgroundColor: Colors.transparent,
          borderColor: AppColors.white,
          borderWidth: 0.5,
        ),
      ],
    );
  }
}
