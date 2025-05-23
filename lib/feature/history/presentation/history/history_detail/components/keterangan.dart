import 'package:bnext/config/theme/app_colors.dart';
import 'package:bnext/core/core.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

List<Widget> keterangan(BuildContext context) {
    return [
      Text('Keterangan',
          style: context.titleMedium?.bold.copyWith(color: AppColors.primaryMain)),
      const Gap(Sizes.p8),
      Text(
          'Lorem Ipsu simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrs standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book',
          style: context.bodySmall?.white),
      const Divider(
        color: AppColors.neutral50,
      ),
      const Gap(Sizes.p24),
    ];
  }