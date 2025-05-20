
import 'package:bnext/config/theme/app_colors.dart';
import 'package:bnext/core/presentation/constants/sizes.dart';
import 'package:bnext/feature/profile/presentation/profile/components/build_items.dart';
import 'package:bnext/feature/profile/presentation/profile/components/build_quick_stats_row.dart';
import 'package:bnext/feature/profile/presentation/profile/components/logout_button.dart';
import 'package:bnext/feature/profile/presentation/profile/components/profile_header.dart';
import 'package:bnext/feature/shared/domain/entities/user_entity.dart';
import 'package:bnext/libraries/components/wrapper/custom_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({
    super.key,
    required this.user,
  });

  final UserEntity? user;

  @override
  Widget build(BuildContext context) {
    return CustomColumn(
      children: [
        Padding(
          padding: const EdgeInsets.all(Sizes.p20),
          child: Column(
            children: [
              ProfielHeader(context: context, user: user),
              const Gap(Sizes.p8),
              const Divider(
                color: AppColors.white,
                thickness: 0.5,
              ),
            ],
          ),
        ),
        BuildQuickStatsRow(context: context),
        const Gap(Sizes.p56),
        BuildItems(context: context),
        const Gap(Sizes.p56),
        LogoutButton(context: context),
        const Gap(Sizes.p32),
      ],
    );
  }
}
