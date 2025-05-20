import 'package:bnext/config/theme/app_colors.dart';
import 'package:bnext/core/core.dart';
import 'package:bnext/feature/shared/domain/entities/user_entity.dart';
import 'package:bnext/libraries/common/constants/app_resources.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfielHeader extends StatelessWidget {
  const ProfielHeader({
    super.key,
    required this.context,
    required this.user,
  });

  final BuildContext context;
  final UserEntity? user;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 110,
          height: 110,
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(AppImages.avatarPlaceholder),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const Gap(Sizes.p32),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              user?.username ?? 'User',
              style: context.titleMedium?.bold.toColor(AppColors.neutral10)
            ),
            Text(
              user?.userProfile?.email ?? 'no gmail',
              style: context.labelMedium?.normal.copyWith(
                color: AppColors.white,
              ),
            ),
            const Gap(Sizes.p16),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  AppIcons.vipIcon,
                  height: 30,
                ),
                const Gap(Sizes.p8),
                Text(
                  'VIP',
                  style: context.labelLarge?.copyWith(
                    color: AppColors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
        const Gap(Sizes.p4),
      ],
    );
  }
}