import 'package:auto_route/auto_route.dart';
import 'package:bnext/config/config.dart';
import 'package:bnext/core/core.dart';
import 'package:bnext/feature/shared/domain/entities/user_entity.dart';
import 'package:bnext/libraries/common/constants/app_resources.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BuildUserProfile extends StatelessWidget {
  const BuildUserProfile({
    super.key,
    required this.context,
    required this.user,
  });

  final BuildContext context;
  final UserEntity? user;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              context.router.push(const ProfileRoute());
            },
            child: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 1),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(
                  AppImages.profileAvatar,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                context.appLang.greeting,
                style: context.bodyMedium?.white
              ),
              Text(
                user?.username ?? 'User',
                style: context.titleMedium?.white
              ),
              const Gap(Sizes.p4),
              Row(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                    decoration: BoxDecoration(
                      color: AppColors.primary3,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Text(
                      'VIP',
                      style: context.bodySmall?.white.medium,
                    ),
                  ),
                  const Gap(Sizes.p8),
                  const Icon(
                    Icons.circle,
                    color: AppColors.neutral10,
                    size: 8,
                  ),
                  const Gap(Sizes.p4),
                  Text(
                    '1.000',
                    style: context.bodySmall
                  ),
                  const Gap(Sizes.p4),
                  Text(
                    'Poin',
                    style: context.bodySmall?.primary
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
