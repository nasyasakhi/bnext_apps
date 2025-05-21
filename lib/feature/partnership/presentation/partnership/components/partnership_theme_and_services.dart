import 'package:bnext/core/core.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class PartnershipThemeAndServices extends StatelessWidget {
  const PartnershipThemeAndServices({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Syarat Dan Ketentuan',
            style: context.titleMedium?.bold.white
          ),
          const Gap(Sizes.p12),
          Text(
            'Lorem ipsum dolor sit amet consectetur. Elementum egestas facilisi neque eget ornare. Urna viverra volutpat nisi felis sollicitudin.',
            style: context.bodySmall?.white.copyWith(height: 1.5),
          ),
        ],
      ),
    );
  }
}