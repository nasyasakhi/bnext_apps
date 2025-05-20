import 'package:bnext/config/theme/app_colors.dart';
import 'package:bnext/core/core.dart';
import 'package:bnext/libraries/common/constants/app_resources.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({
    super.key,
    required this.context,
  });

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          AppImages.bnextLogo,
          height: 100,
        ),
        const Gap(Sizes.p20),
        Text(
          'Selamat Datang di Bnext',
          style: context.titleMedium?.bold.toColor(AppColors.white),
          textAlign: TextAlign.center,
        ),
        const Gap(Sizes.p40),
      ],
    );
  }
}