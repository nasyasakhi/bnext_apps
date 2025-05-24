import 'package:bnext/core/core.dart';
import 'package:flutter/material.dart';
import 'package:bnext/config/theme/theme.dart';
import 'package:bnext/libraries/libraries.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.color,
    required this.title,
    this.onTap,
  });
  final Color color;
  final String title;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 104,
        width: double.infinity,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(AppImages.bnextLogoWhite, height: 35),
              Text(
                title,
                textAlign: TextAlign.center,
                style: context.textTheme.labelSmall?.normal,
              ),
               Container(
                padding: const EdgeInsets.symmetric(vertical: 6),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xFF001F54),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Text(
                  context.appLang.moreInfo,
                  style: context.labelSmall,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
