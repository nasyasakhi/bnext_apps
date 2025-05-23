import 'package:bnext/config/config.dart';
import 'package:bnext/core/core.dart';
import 'package:bnext/libraries/common/common.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class PaymentMethodCard extends StatelessWidget {
  const PaymentMethodCard({
    super.key,
    required this.context,
  });

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 27, vertical: 19),
      margin: const EdgeInsets.only(top: 15),
      decoration: BoxDecoration(
        color: AppColors.buttonPrimarylight,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(AppIcons.walletIcon, height: 20),
              const Gap(Sizes.p12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Kartu Kredit/Debit',
                    style: context.labelLarge?.toWeight(FontWeight.bold),
                  ),
                  Text(
                    'VISA dan Mastercard',
                    style: context.labelLarge,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}