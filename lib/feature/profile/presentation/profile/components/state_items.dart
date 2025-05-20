import 'package:bnext/config/theme/app_colors.dart';
import 'package:bnext/core/core.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class StateItems extends StatelessWidget {
  const StateItems({
    super.key,
    required this.context,
    required this.icon,
    required this.label,
    required this.value,
  });

  final BuildContext context;
  final String icon;
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {},
        child: Row(
          children: [
            Image.asset(
              icon,
              color: AppColors.white,
              height: 18,
            ),
            const Gap(Sizes.p8),
            Text(
              label,
              style: context.bodySmall?.copyWith(
                color: AppColors.white,
              ),
            ),
            const Spacer(),
            Text(
              value,
              style: context.bodySmall?.copyWith(
                color: AppColors.white,
              ),
            ),
            const Icon(
              Icons.chevron_right,
              color: AppColors.white,
              size: 16,
            ),
          ],
        ),
      ),
    );
  }
}