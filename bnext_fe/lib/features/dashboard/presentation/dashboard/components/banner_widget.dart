import 'package:bnext_fe/core/presentation/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../config/config.dart';
import '../../../../../libraries/common/constants/app_resources.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key, this.image, this.onTap});

  final String? image;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(top: 8, bottom: 8),
        width: double.infinity,
        height: 104,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: AppColors.primary3,
            image: DecorationImage(
              image: AssetImage(image ?? AppImages.dummyBanner),
              fit: BoxFit.cover,
            )),
        child: image == null
            ? null
            : Center(
                child: SvgPicture.asset(
                  AppIcons.imagePlaceholder,
                  height: Sizes.p32,
                  width: Sizes.p36,
                ),
              ),
      ),
    );
  }
}
