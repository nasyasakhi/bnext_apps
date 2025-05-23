import 'package:bnext/config/theme/app_colors.dart';
import 'package:bnext/core/core.dart';
import 'package:bnext/libraries/common/constants/app_resources.dart';
import 'package:bnext/libraries/components/wrapper/card_wrapper.dart';
import 'package:bnext/libraries/components/wrapper/custom_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class CardFoto extends StatelessWidget {
  CardFoto({super.key, required this.context, required this.title, this.height});

  final BuildContext context;
  // final dynamic context;
  final String title;
  double? height;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title ?? '',
            style: context.titleSmall?.copyWith(
                color: AppColors.black, fontWeight: FontWeight.w600)),
        const Gap(Sizes.p8),
        CardWrapper(
            borderRadius: BorderRadius.circular(16),
            padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 12),
            backgroundColor: AppColors.buttonPrimarylight,
            splashColor: AppColors.primaryMain,
            child: CustomColumn(children: [
              SizedBox(
                height: height ?? 100,
                child: Center(
                  child: SvgPicture.asset(
                    AppIcons.imagePlaceholder,
                  ),
                ),
              )
            ])),
      ],
    );
  }
}
