import 'package:auto_size_text/auto_size_text.dart';
import 'package:bnext_fe/core/presentation/constants/sizes.dart';
import 'package:bnext_fe/core/presentation/extension/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../../../config/config.dart';
import '../../libraries.dart';

class SubmenuItem extends StatelessWidget {
  final String icon;
  final String title;
  final String subTitle;
  final double? width;
  final void Function()? onTap;
  const SubmenuItem({
    super.key,
    required this.icon,
    required this.title,
    required this.subTitle,
    required this.onTap,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return CardWrapper(
        width: width,
        onTap: onTap,
        backgroundColor: AppColors.primarySurfaceLight,
        splashColor: AppColors.primaryMain,
        borderRadius: BorderRadius.circular(Sizes.p8),
        child: CustomColumn(
          crossAxisAlignment: CrossAxisAlignment.start,
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          children: [
            Container(
              width: Sizes.p46,
              height: Sizes.p46,
              decoration: BoxDecoration(
                color: AppColors.primary2,
                borderRadius: BorderRadius.circular(Sizes.p32),
              ),
              alignment: Alignment.center,
              child: Image.asset(
                icon,
                height: 24,
                width: 24,
                color: AppColors.primaryMain,
              ),
            ),
            const Gap(Sizes.p8),
            AutoSizeText(
              title,
              maxLines: 2,
              minFontSize: 1,
              style: context.bodySmall?.toColor(AppColors.primaryMain).semiBold,
            ),
            const Gap(Sizes.p4),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AutoSizeText(
                  subTitle,
                  maxLines: 2,
                  minFontSize: 1,
                  style: context.labelSmall
                      ?.toSize(8)
                      .toColor(AppColors.accentMain)
                      .semiBold,
                ),
                const Gap(Sizes.p4),
                SvgPicture.asset(
                  AppIcons.chevronRight,
                  height: Sizes.p8,
                  width: Sizes.p8,
                ),
              ],
            ),
          ],
        ));
  }
}