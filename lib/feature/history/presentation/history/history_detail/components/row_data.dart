import 'package:bnext/config/config.dart';
import 'package:bnext/core/core.dart';
import 'package:flutter/material.dart';

class RowData extends StatelessWidget {
  const RowData({
    super.key,
    required this.context,
    required this.title,
    required this.data,
  });

  final BuildContext context;
  final String title;
  final String? data;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 1,
            child: Text(
              title,
              style: context.bodySmall?.toColor(AppColors.primaryMain),
            )),
        Expanded(
            flex: 2,
            child: Text(
              "   : ${data ?? '-'}",
              style: context.labelMedium
                  ?.toColor(AppColors.primaryMain)
                  .toWeight(FontWeight.w600),
            )),
      ],
    );
  }
}