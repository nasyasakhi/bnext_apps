import 'package:bnext/core/core.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class PartnershipDescription extends StatelessWidget {
  const PartnershipDescription({
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
            'Deskripsi',
            style: context.titleSmall?.bold.white
          ),
          const Gap(Sizes.p12),
          Text(
            'Lorem ipsum dolor sit amet consectetur. Elementum egestas facilisi neque eget ornare. Urna viverra volutpat nisi felis sollicitudin.',
            style: context.bodyMedium?.white.copyWith(height: 1.5),
          ),
        ],
      ),
    );
  }
}