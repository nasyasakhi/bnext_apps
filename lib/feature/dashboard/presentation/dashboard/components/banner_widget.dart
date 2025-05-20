import 'package:flutter/material.dart';

import '../../../../../config/config.dart';
import '../../../../../libraries/common/constants/app_resources.dart';
class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key, this.imageUrl, this.onTap});

  final String? imageUrl;
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
          image: imageUrl != null
              ? DecorationImage(
                  image: NetworkImage(imageUrl!),
                  fit: BoxFit.cover,
                )
              : DecorationImage(
                  image: AssetImage(AppImages.dummyBanner),
                  fit: BoxFit.cover,
                ),
        ),
  
      ),
    );
  }
}
