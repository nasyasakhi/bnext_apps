import 'package:auto_size_text/auto_size_text.dart';
import 'package:bnext_fe/core/presentation/constants/sizes.dart';
import 'package:bnext_fe/core/presentation/extension/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import '../../libraries.dart';

import '../../../config/config.dart';

class CardHeaderDashboard extends StatelessWidget {
  final String name;
  final String numberId;
  final String location;
  final void Function()? onTap;
  const CardHeaderDashboard({
    super.key,
    required this.name,
    required this.numberId,
    required this.location,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return CardWrapper(
        onTap: onTap,
        backgroundColor: AppColors.primarySurfaceLight,
        splashColor: AppColors.primaryMain,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        borderRadius: BorderRadius.circular(Sizes.p8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: AppColors.primary2,
                borderRadius: BorderRadius.circular(Sizes.p32),
              ),
              alignment: Alignment.center,
              child: SvgPicture.asset(
                AppIcons.imagePlaceholder,
                color: AppColors.primaryMain,
                height: 24,
                width: 24,
              ),
            ),
            const Gap(Sizes.p8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style:
                      context.bodyMedium?.toColor(AppColors.primaryMain).medium,
                ),
                const Gap(Sizes.p4),
                Text(
                  numberId,
                  style:
                      context.bodySmall?.toColor(AppColors.primaryMain).medium,
                ),
                const Gap(Sizes.p4),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      AppIcons.locationIcon,
                      height: Sizes.p10,
                      width: Sizes.p12,
                    ),
                    const Gap(Sizes.p4),
                    AutoSizeText(
                      location,
                      maxLines: 2,
                      minFontSize: 8,
                      style: context.bodySmall?.blue.medium,
                    ),
                  ],
                ),
              ],
            )
          ],
        ));
  }
}