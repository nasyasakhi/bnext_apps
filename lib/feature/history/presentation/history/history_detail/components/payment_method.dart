  import 'package:auto_route/auto_route.dart';
import 'package:bnext/config/theme/app_colors.dart';
import 'package:bnext/core/core.dart';
import 'package:bnext/feature/history/presentation/history/history_detail/components/payment_method_card.dart';
import 'package:bnext/libraries/components/button/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

List<Widget> pembayaran(BuildContext context) {
    return [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Metode Pembayaran',
              style: context.titleMedium?.bold.copyWith(
                color: AppColors.primaryMain,
              )),
          Text('Ganti', style: context.labelLarge?.bold.copyWith(color: AppColors.dangerMain)),
        ],
      ),
      PaymentMethodCard(context: context),
      const Gap(Sizes.p8),
      Row(
        children: [
          Checkbox(
            value: false,
            onChanged: (value) {},
          ),
          Expanded(
            child: RichText(
                text: TextSpan(
                    text: 'Saya setuju dengan',
                    style:
                        context.bodySmall?.copyWith(color: AppColors.neutral60),
                    children: [
                  TextSpan(
                      text: ' Syarat & Ketentuan',
                      style: context.bodySmall?.copyWith(
                        color: AppColors.primaryMain,
                        fontWeight: FontWeight.w600,
                      )),
                  TextSpan(
                    text: ' dan ',
                    style:
                        context.bodySmall?.copyWith(color: AppColors.neutral60),
                  ),
                  TextSpan(
                      text: ' Kebijakan & Privasi ',
                      style: context.bodySmall?.copyWith(
                        color: AppColors.primaryMain,
                        fontWeight: FontWeight.w600,
                      )),
                  TextSpan(
                    text: ' dari ',
                    style:
                        context.bodySmall?.copyWith(color: AppColors.neutral60),
                  ),
                  TextSpan(
                    text: 'Aplikasi ITS',
                    style:
                        context.bodySmall?.copyWith(color: AppColors.neutral60),
                  ),
                ])),
          )
        ],
      ),
      const Gap(Sizes.p16),
      Padding(
        padding: const EdgeInsets.all(16),
        child: PrimaryButton(
          text: 'Bayar',
          onPressed: () {
            context.router.back();
          },
        ),
      ),
    ];
  }