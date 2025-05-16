import 'dart:async';
import 'package:bnext_fe/core/presentation/constants/sizes.dart';
import 'package:bnext_fe/core/presentation/extension/build_context_extension.dart';
import 'package:gap/gap.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import '../../../../libraries/libraries.dart';
import '../../../../config/router/app_router.dart';
import '../../../../config/theme/app_colors.dart';
import '../../../../libraries/components/card_widget/product_card.dart';

@RoutePage()
class PromoPage extends StatefulWidget {
  const PromoPage({super.key});

  @override
  State<PromoPage> createState() => _PromoPageState();
}

class _PromoPageState extends State<PromoPage> {
  Timer? _timer;
  int _secondsRemaining = 3 * 3600 + 1 * 60 + 20;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_secondsRemaining > 0) {
          _secondsRemaining--;
        } else {
          _timer?.cancel();
        }
      });
    });
  }

  String _formatTime() {
    int hours = _secondsRemaining ~/ 3600;
    int minutes = (_secondsRemaining % 3600) ~/ 60;
    int seconds = _secondsRemaining % 60;

    return '${hours.toString().padLeft(2, '0')}:${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: const PrimaryAppBar(
        enableBackButton: true,
        title: 'Promo',
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: CustomColumn(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildPromoHeader(),
              const Gap(Sizes.p56),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 32, bottom: 24),
                    color: AppColors.backGroundSecondary,
                    child: Column(
                      children: [
                        const Gap(Sizes.p16),
                        _buildCountdownTimer(),
                        const Gap(Sizes.p24),
                        _buildProductGrid(isDiscounted: false),
                        const Gap(Sizes.p32),
                      ],
                    ),
                  ),
                  Positioned(
                    top: -24,
                    left: 0,
                    right: 0,
                    child: _buildFlashSaleButton(),
                  ),
                ],
              ),
              const Gap(Sizes.p24),
              _buildDiscountBanner(),
              const Gap(Sizes.p24),
              _buildProductGrid(isDiscounted: true),
              const Gap(Sizes.p32),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPromoHeader() {
    return Container(
      width: double.infinity,
      height: 220,
      foregroundDecoration: const BoxDecoration(),
      child: Image.asset(
        AppImages.dummyBanner,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _buildFlashSaleButton() {
    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 40),
        decoration: BoxDecoration(
          color: AppColors.primaryMain,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Text(
          'FLASH SALE 70%',
          style: context.titleSmall?.copyWith(
            color: AppColors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _buildCountdownTimer() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      decoration: BoxDecoration(
        color: AppColors.backGroundSecondary,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: AppColors.primary3),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Berakhir Dalam',
            style: context.bodyMedium?.copyWith(color: AppColors.white),
          ),
          Text(
            _formatTime(),
            style: context.bodyMedium?.copyWith(
              color: AppColors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProductGrid({required bool isDiscounted}) {
    return SizedBox(
      height: 250,
      child: GridView.builder(
        scrollDirection: Axis.horizontal,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          childAspectRatio: 1.2,
        ),
        itemCount: 10,
        itemBuilder: (context, index) {
          return ProductCard(
            description2: 'Lorem ipsum dolor sit amet',
            description: 'Rp 10.000',
            onTap: () {
              context.router.push(const PromoDetailRoute());
            },
            title: 'Lorem ipsum dolor sit amet',
          );
        },
        padding: const EdgeInsets.symmetric(horizontal: 24),
      ),
    );
  }

  Widget _buildDiscountBanner() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppColors.primaryMain.withOpacity(0.7),
            AppColors.backGroundSecondary,
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'DISKON PRODUK 20%',
            style: context.titleSmall?.copyWith(
              color: AppColors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Sampai 02 Mei 2025',
            style: context.bodySmall?.copyWith(color: AppColors.white),
          ),
        ],
      ),
    );
  }
}
