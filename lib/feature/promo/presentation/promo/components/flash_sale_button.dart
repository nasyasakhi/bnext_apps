import 'package:bnext/config/theme/app_colors.dart';
import 'package:bnext/core/core.dart';
import 'package:flutter/material.dart';

class FlashSaleButton extends StatelessWidget {
  const FlashSaleButton({
    super.key,
    required this.context,
  });

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
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
}