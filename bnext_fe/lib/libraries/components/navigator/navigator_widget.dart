import 'package:bnext_fe/core/presentation/constants/sizes.dart';
import 'package:bnext_fe/core/presentation/extension/extension.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../config/config.dart';


class NavigatorWidget extends StatelessWidget {
  const NavigatorWidget({
    super.key,
    required this.tittle,
    required this.description,
    this.isPayment = false,
  });

  final String tittle;
  final String description;
  final bool isPayment;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                tittle,
                style: context.titleSmall
                    ?.toColor(Colors.white)
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              const Gap(Sizes.p4),
              Text(description, style: context.labelSmall?.toSize(isPayment ? 12 : 9)),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: AppColors.primaryMain,
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Center(
            child: Icon(Icons.arrow_forward_ios_rounded, size: 18),
          ),
        )
      ],
    );
  }
}