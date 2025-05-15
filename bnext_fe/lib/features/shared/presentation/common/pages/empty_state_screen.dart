import 'package:bnext/config/theme/theme.dart';
import 'package:bnext/core/presentation/presentation.dart';
import 'package:bnext/libraries/libraries.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class EmptyStateScreen extends StatelessWidget {
  const EmptyStateScreen({
    super.key,
    this.message = 'Tidak ada data',
    this.padding,
  });

  final String message;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomColumn(
        mainAxisSize: MainAxisSize.min,
        padding: padding ?? const EdgeInsets.all(Sizes.p16),
        children: [
          Container(
            width: 75,
            height: 75,
            decoration: BoxDecoration(
              color: AppColors.neutral30,
              borderRadius: BorderRadius.circular(Sizes.p16),
            ),
            alignment: Alignment.center,
            child: Image.asset(
              AppImages.avatarPlaceholder,
              width: 24,
              height: 24,
            ),
          ),
          const Gap(Sizes.p8),
          Text(
            message,
            style: context.bodyMedium?.semiBold,
          ),
        ],
      ),
    );
  }
}
