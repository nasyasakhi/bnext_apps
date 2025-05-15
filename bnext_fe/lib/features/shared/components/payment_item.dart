import 'package:bnext_fe/core/presentation/constants/sizes.dart';
import 'package:bnext_fe/core/presentation/extension/extension.dart';
import 'package:gap/gap.dart';
import '../../../core/core.dart';
import 'package:flutter/material.dart';
import '../../../config/theme/theme.dart';

class PaymentItem extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;
  final bool isSelected;
  final Widget? icon;

  const PaymentItem({
    super.key,
    required this.title,
    this.onTap,
  this.isSelected = false,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
              height: 55,
              width: 55,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color:
                      isSelected ? AppColors.primaryMain : AppColors.primary2,
                ),
              ),
              child: icon ??
                  const SizedBox(
                    height: 24,
                    width: 24,
                  )),
          const Gap(Sizes.p8),
          Text(title, style: context.labelSmall)
        ],
      ),
    );
  }
}
