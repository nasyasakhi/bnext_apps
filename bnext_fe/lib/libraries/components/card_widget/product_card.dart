import 'package:gap/gap.dart';
import 'package:flutter/material.dart';
import '../../../config/theme/theme.dart';
import '../../../core/presentation/constants/constants.dart';

class ProductCard extends StatelessWidget {
  final String title;
  final String description;
  final String description2;
  final VoidCallback onTap;

  const ProductCard({
    super.key,
    required this.title,
    required this.description,
    required this.description2,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.backGroundSecondary,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: AppColors.primary3,
            width: 1,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 120,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const Gap(Sizes.p4),
                  Text(description,
                      style: Theme.of(context).textTheme.labelLarge),
                  const Gap(Sizes.p8),
                  Text(
                    description2,
                    style: Theme.of(context)
                        .textTheme
                        .labelSmall
                        ?.copyWith(color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
