import 'package:bnext/config/theme/app_colors.dart';
import 'package:bnext/core/core.dart';
import 'package:bnext/core/language_cubit/language_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class MenuItem extends StatelessWidget {
  const MenuItem({
    super.key,
    required this.context,
    required this.value,
    required this.groupValue,
    required this.title,
  });

  final BuildContext context;
  final String value;
  final String groupValue;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: InkWell(
        onTap: () {
          // Memanggil setLanguage dari LanguageCubit
          context.read<LanguageCubit>().setLanguage(Locale(value));
        },
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          decoration: BoxDecoration(
              color: AppColors.backGroundSecondary,
              borderRadius: BorderRadius.circular(30),
              border: Border.all(color: AppColors.primary3)),
          child: Row(
            children: [
              Radio(
                value: value,
                groupValue: groupValue,
                onChanged: (newValue) {
                  context.read<LanguageCubit>().setLanguage(Locale(newValue!));
                },
              ),
              const Gap(Sizes.p16),
              Text(
                title,
                style: context.bodyMedium?.semiBold,
              ),
            ],
          ),
        ),
      ),
    );
  }
}