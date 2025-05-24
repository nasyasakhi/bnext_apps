import 'package:bnext/core/language_cubit/language_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:bnext/core/core.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:bnext/libraries/libraries.dart';
import 'package:bnext/config/theme/app_colors.dart';

@RoutePage()
class LanguagePage extends StatefulWidget {
  const LanguagePage({super.key});

  @override
  State<LanguagePage> createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: PrimaryAppBar(
        enableBackButton: true,
        title: context.appLang.language,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: CustomColumn(
            children: [
              const Gap(Sizes.p56),
              _buildMenuItems(),
            ],
          ),
        ),
      ),
    );
  }
  // Untuk membangun opsi pilih bahasa dengan mapping
  Widget _buildMenuItems() {
    final menuItems = [
      {'title': 'English', 'value': 'en', 'groupValue': 'id'},
      {'title': 'Bahasa Indonesia', 'value': 'id', 'groupValue': 'id'},
    ];

    return BlocBuilder<LanguageCubit, LanguageState>(
      builder: (context, state) {
        final currentLocale = state.maybeMap( 
          loaded: (loaded) => loaded.locale.languageCode,
          orElse: () => 'id',
        );
        return Column(
          children: menuItems.map((item) => _buildMenuItem(
            item['value'] as String,
            currentLocale, 
            item['title'] as String)
          ).toList(),
        );
      },
    );
  }

  // Untuk membuat widget pemilihan Bahasa dengan radio button
  Widget _buildMenuItem(String value, String groupValue, String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: InkWell(
        onTap: () {
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
                style: context.bodyMedium?.copyWith(
                    color: AppColors.white, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
