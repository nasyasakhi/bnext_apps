import 'package:auto_route/auto_route.dart';
import 'package:bnext_fe/core/presentation/constants/sizes.dart' show Sizes;
import 'package:bnext_fe/core/presentation/extension/extension.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../config/config.dart';
import '../../libraries.dart';

class PrimaryAppBar extends StatelessWidget implements PreferredSizeWidget {
  const PrimaryAppBar({
    super.key,
    this.title,
    this.onBackPressed,
    this.actions,
    this.enableBackButton = true,
    this.isLightTheme = true,
    this.isDarkShadow = false,
    this.isLightShadow = false,
    this.backIconAsset = AppIcons.arrowLeftBackground,
    this.backgroundColor,
    this.paddingTitle,
    this.bottom,
    this.preferredSize = const Size.fromHeight(kToolbarHeight),
  });

  final String? title;
  final VoidCallback? onBackPressed;
  final List<Widget>? actions;
  final bool enableBackButton;
  final bool isLightTheme;
  final bool isDarkShadow;
  final bool isLightShadow;
  final String backIconAsset;
  final Color? backgroundColor;
  final EdgeInsets? paddingTitle;
  final PreferredSizeWidget? bottom;
  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor ??
          (isLightTheme ? Colors.transparent : Colors.transparent),
      // elevation: isDarkShadow || isLightShadow
      //     ? 5
      //     : isLightTheme
      //         ? null
      //         : 1,
      // shadowColor: isDarkShadow
      //     ? AppColors.white.withOpacity(.05)
      //     : isLightShadow
      //         ? AppColors.neutral100.withOpacity(.03)
      //         : null,
      leading: enableBackButton
          ? IconButton(
              onPressed: () {
                FocusHelper.unfocus();
                (onBackPressed ?? () => context.maybePop(context)).call();
              },
              splashRadius: Sizes.p24,
              icon: const Icon(
                Icons.arrow_back_ios_new,
                color: AppColors.white,
              ))
          : null,
      centerTitle: true,
      titleSpacing: enableBackButton ? 0 : 16,
      title: title != null
          ? Text(
              title ?? '',
              style: const TextStyle().extraBold.toSize(16).toColor(
                    isLightTheme ? AppColors.white : AppColors.white,
                  ),
            )
          : null,
      actions: actions
        ?..add(
          const Gap(Sizes.p16),
        ),
      bottom: bottom,
    );
  }
}