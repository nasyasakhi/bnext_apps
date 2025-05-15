import '../../../../libraries/components/button/secondary_button.dart';
import 'package:gap/gap.dart';
import '../../../../core/core.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import '../../../../libraries/libraries.dart';
import '../../../../config/theme/app_colors.dart';
import '../../../../config/router/app_router.dart';

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
      appBar: const PrimaryAppBar(
        enableBackButton: true,
        title: 'Bahasa',
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

  Widget _buildMenuItems() {
    final menuItems = [
      {'title': 'English', 'value': 'en', 'groupValue': 'id'},
      {'title': 'Bahasa Indonesia', 'value': 'id', 'groupValue': 'id'},
    ];

    return Column(
      children: menuItems
          .map((item) => _buildMenuItem(item['value'] as String,
              item['groupValue'] as String, item['title'] as String))
          .toList(),
    );
  }

  Widget _buildMenuItem(String value, String groupValue, String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: InkWell(
        onTap: () {},
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
                onChanged: (value) {},
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

  Widget _buildLogoutButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50.0),
      child: SecondaryButton(
        width: double.infinity,
        text: 'Logout',
        onPressed: () {
          context.router.replace(const PreloginRoute());
        },
        backgroundColor: AppColors.backGroundSecondary,
        borderColor: AppColors.white,
        borderWidth: 1,
      ),
    );
  }
}
