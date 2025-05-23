
import 'package:bnext/libraries/common/constants/app_resources.dart';
import 'package:flutter/material.dart';

class PromoHeader extends StatelessWidget {
  const PromoHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 220,
      foregroundDecoration: const BoxDecoration(),
      child: Image.asset(
        AppImages.dummyBanner,
        fit: BoxFit.cover,
      ),
    );
  }
}