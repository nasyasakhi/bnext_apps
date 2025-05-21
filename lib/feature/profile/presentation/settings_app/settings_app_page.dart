import 'package:bnext/config/config.dart';
import 'package:bnext/config/theme/app_colors.dart';
import 'package:bnext/core/core.dart';
import 'package:bnext/libraries/common/constants/app_resources.dart';
import 'package:bnext/libraries/components/app_bar/primary_app_bar.dart';
import 'package:bnext/libraries/components/wrapper/custom_wrapper.dart';
import 'package:gap/gap.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class SettingsAppPage extends StatefulWidget {
  const SettingsAppPage({super.key});

  @override
  State<SettingsAppPage> createState() => _SettingsAppPageState();
}

class _SettingsAppPageState extends State<SettingsAppPage> {
  bool isNotificationEnabled = true;
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: const PrimaryAppBar(
        enableBackButton: true,
        title: 'Pengaturan Aplikasi',
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
      {
        'icon': AppIcons.settingsIcon, 
        'title': 'Pengaturan Akun', 
        'isDirectButton': true, 
      },

      {'icon': AppIcons.notifIcon, 'title': 'Nyalakan Notifikasi'},
      {'icon': AppIcons.notifIcon, 'title': 'Lorem Ipsum'},
      {'icon': AppIcons.notifIcon, 'title': 'Lorem Ipsum'},
      {'icon': AppIcons.notifIcon, 'title': 'Lorem Ipsum'},
      {'icon': AppIcons.notifIcon, 'title': 'Lorem Ipsum'},
      {'icon': AppIcons.notifIcon, 'title': 'Lorem Ipsum'},
    ];

    return Column(
      children: menuItems.map((item) =>_buildMenuItem(
        item['icon'] as String, 
        item['title'] as String,)
      ).toList(),
    );
  }

  Widget _buildMenuItem(String icon, String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          padding: title.toLowerCase() == 'pengaturan akun'
              ? const EdgeInsets.all(16.0)
              : const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
          margin: EdgeInsets.only(
              bottom: title.toLowerCase() == 'pengaturan akun' ? 24 : 0),
          decoration: BoxDecoration(
              color: AppColors.backGroundSecondary,
              borderRadius: BorderRadius.circular(30),
              border: Border.all(color: AppColors.primary3)),
          child: Row(
            children: [
              Image.asset(icon, height: 24),
              const Gap(Sizes.p16),
              Text(
                title,
                style: context.bodyMedium?.copyWith(
                    color: AppColors.white, fontWeight: FontWeight.w500),
              ),
              const Spacer(),
              if (title.toLowerCase() == 'pengaturan akun') ...[
                const Icon(
                  Icons.chevron_right,
                  color: AppColors.white,
                ),
              ] else ...[
                Switch(
                  value: isNotificationEnabled,
                  onChanged: (value) {
                    setState(() {
                      isNotificationEnabled = value;
                    });
                  },
                  focusColor: AppColors.primary3,
                  activeTrackColor: AppColors.primary3,
                  activeColor: AppColors.white,
                ),
              ]
            ],
          ),
        ),
      ),
    );
  }
}
