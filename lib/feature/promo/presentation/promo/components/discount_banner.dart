import 'package:bnext/config/config.dart';
import 'package:bnext/core/core.dart';
import 'package:flutter/material.dart';

class BuildDiscountBanner extends StatelessWidget {
  const BuildDiscountBanner({
    super.key,
    required this.context,
  });

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
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