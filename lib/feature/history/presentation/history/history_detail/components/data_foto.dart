import 'package:bnext/config/theme/app_colors.dart';
import 'package:bnext/core/core.dart';
import 'package:bnext/feature/history/presentation/history/history_detail/components/card_foto.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

export 'card_foto.dart';

List<Widget> dataFoto(BuildContext context) {
    return [
      Text('Data Foto',
          style: context.titleMedium?.semiBold.copyWith(
              color: AppColors.primaryMain)),
      const Gap(Sizes.p20),
      Row(
        children: [
          Expanded(child: CardFoto(context: context, title: 'Depan')),
          const Gap(Sizes.p40),
          Expanded(child: CardFoto(context: context, title: 'Belakang')),
        ],
      ),
      const Gap(Sizes.p20),
      Row(
        children: [
          Expanded(child: CardFoto(context: context, title: 'Samping Kiri')),
          const Gap(Sizes.p40),
          Expanded(child: CardFoto(context: context, title: 'Samping Kanan')),
        ],
      ),
      const Gap(Sizes.p20),
      CardFoto(context: context, title: 'STNK'),
      const Gap(Sizes.p20),
      CardFoto(context: context, title: 'SIM', height: 150),
      const Gap(Sizes.p24),
    ];
  }