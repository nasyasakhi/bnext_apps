import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:bnext/config/di/setup_injection.dart';
import 'package:bnext/feature/bnext_product/bnext_product/data/models/product_model.dart';
import 'package:bnext/feature/bnext_product/bnext_product/presentation/bnext_product/cubit/product_cubit.dart';
import 'package:bnext/feature/promo/presentation/promo/components/discount_banner.dart';
import 'package:bnext/libraries/components/card_widget/product_card_product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import 'package:bnext/config/router/app_router.dart';
import 'package:bnext/config/theme/app_colors.dart';
import 'package:bnext/core/core.dart';
import 'package:bnext/libraries/libraries.dart';
import 'package:bnext/feature/promo/presentation/promo/components/components.dart';


@RoutePage()
class PromoPage extends StatefulWidget {
    final String imageUrl;
    final String title;

  const PromoPage({super.key, required this.imageUrl, required this.title});

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
      appBar: PrimaryAppBar(
        enableBackButton: true,
        title: widget.title,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: CustomColumn(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BuildPromoHeader(widget: widget),
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
                        const BuildProductGrid(isDiscounted: false),
                        const Gap(Sizes.p32),
                      ],
                    ),
                  ),
                  Positioned(
                    top: -24,
                    left: 0,
                    right: 0,
                    child: BuildFlashSaleButton(context: context),
                  ),
                ],
              ),
              const Gap(Sizes.p24),
              BuildDiscountBanner(context: context),
              const Gap(Sizes.p24),
              const BuildProductGrid(isDiscounted: true),
              const Gap(Sizes.p32),
            ],
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
}