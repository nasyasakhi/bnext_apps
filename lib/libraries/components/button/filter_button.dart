import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../config/config.dart';
import '../../../core/core.dart';
import '../../libraries.dart';

class FilterButtonWidget extends StatelessWidget {
  final VoidCallback? onPressed;
  final String filterIcon;
  final double height;
  final double width;
  final Color? backgroundColor;
  final Color? iconColor;

  const FilterButtonWidget({
    super.key,
    this.onPressed,
    this.height = Sizes.p48,
    this.width = 68,
    this.filterIcon = AppIcons.filterSearchIcon,
    this.iconColor,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return CardWrapper(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: backgroundColor ?? AppColors.primaryMain,
          borderRadius: BorderRadius.circular(100),
        ),
        child: Center(
          child: SvgPicture.asset(
            filterIcon,
            color: iconColor ?? AppColors.white,
            height: Sizes.p24,
            width: Sizes.p24,
          ),
        ),
      ),
    );
  }
}
