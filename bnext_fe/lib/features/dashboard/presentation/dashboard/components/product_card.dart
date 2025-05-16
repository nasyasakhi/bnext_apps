import 'package:bnext_fe/core/presentation/extension/build_context_extension.dart';
import 'package:bnext_fe/core/presentation/extension/extension.dart';
import 'package:flutter/material.dart';
import '../../../../../config/theme/theme.dart';
import '../../../../../libraries/libraries.dart';

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
                style: context.textTheme.labelSmall?.toWeight(FontWeight.w600),
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 16),
                decoration: BoxDecoration(
                  color: const Color(0xFF001F54),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Text('More Info',
                    style: context.textTheme.labelSmall
                        ?.toWeight(FontWeight.bold)
                        .toColor(
                          AppColors.white,
                        )
                        .toSize(9)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
