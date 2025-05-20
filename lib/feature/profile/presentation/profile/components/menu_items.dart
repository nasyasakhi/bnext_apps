import 'package:bnext/config/theme/app_colors.dart';
import 'package:bnext/core/core.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MenuItem extends StatelessWidget {
  const MenuItem({
    super.key,
    required this.context,
    required this.icon,
    required this.title,
    required this.onTap,
  });

  final BuildContext context;
  final String icon;
  final String title;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
              color: AppColors.backGroundSecondary,
              borderRadius: BorderRadius.circular(30),
              border: Border.all(color: AppColors.primary3)),
          child: Row(
            children: [
              Image.asset(icon, height: 24),
              const Gap(Sizes.p16),
              Text(
                title,
                style: context.bodyMedium?.copyWith(
                    color: AppColors.white, fontWeight: FontWeight.w500),
              ),
              const Spacer(),
              const Icon(
                Icons.chevron_right,
                color: AppColors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}