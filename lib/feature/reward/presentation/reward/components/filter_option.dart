import 'package:bnext/config/theme/app_colors.dart';
import 'package:bnext/core/core.dart';
import 'package:flutter/material.dart';

class FilterOptions extends StatelessWidget {
  final String selectedFilter;
  final List<String> packages;
  final ValueChanged<String> onSelected;

  const FilterOptions({
    super.key,
    required this.selectedFilter,
    required this.packages,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: packages.length,
        separatorBuilder: (_, __) => const SizedBox(width: 12),
        itemBuilder: (_, index) {
          final filter = packages[index];
          final isSelected = selectedFilter == filter;

          return InkWell(
            onTap: () => onSelected(filter),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
              decoration: BoxDecoration(
                color: isSelected ? AppColors.primaryMain : Colors.transparent,
                borderRadius: BorderRadius.circular(20),
                border: isSelected ? null : Border.all(color: AppColors.white),
              ),
              child: Text(
                filter,
                style: context.labelSmall?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}