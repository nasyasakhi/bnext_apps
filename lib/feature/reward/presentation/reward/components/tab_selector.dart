import 'package:bnext/config/theme/app_colors.dart';
import 'package:bnext/core/core.dart';
import 'package:flutter/material.dart';

class TabSelector extends StatelessWidget {
  final bool isPoinTab;
  final ValueChanged<bool> onTabChanged;

  const TabSelector({
    super.key,
    required this.isPoinTab,
    required this.onTabChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Colors.grey.shade700, width: 1),
      ),
      child: Row(
        children: [
          _buildTab(context, label: 'Poin', selected: isPoinTab, onTap: () => onTabChanged(true)),
          _buildTab(context, label: 'Voucher Aktif', selected: !isPoinTab, onTap: () => onTabChanged(false)),
        ],
      ),
    );
  }

  Widget _buildTab(BuildContext context, {required String label, required bool selected, required VoidCallback onTap}) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: selected ? AppColors.primaryMain : Colors.transparent,
            borderRadius: BorderRadius.circular(24),
          ),
          child: Center(
            child: Text(
              label,
              style: context.labelLarge?.copyWith(
                fontWeight: selected ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ),
        ),
      ),
    );
  }
}