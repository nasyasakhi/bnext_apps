import 'package:auto_route/auto_route.dart';
import 'package:bnext/config/router/app_router.dart';
import 'package:bnext/core/presentation/presentation.dart';
import 'package:bnext/feature/profile/presentation/profile/components/menu_items.dart';
import 'package:bnext/libraries/common/constants/app_resources.dart';
import 'package:flutter/material.dart';

class BuildItems extends StatelessWidget {
  const BuildItems({
    super.key,
    required this.context,
  });

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    final menuItems = [
      {
        'icon': AppIcons.historyTransactionIcon, 
        'title': context.appLang.transactionHistory
      },
      {
        'icon': AppIcons.partnershipIcon,
        'title': context.appLang.joinPartnership,
      },
      {
        'icon': AppIcons.promoIcon, 
        'title': 'Promo'
      },
      {
        'icon': AppIcons.paymentIcon,
        'title': context.appLang.paymentMethods,
        'onTap': () {
          context.router.push(const PaymentMethodRoute());
        }
      },
      {
        'icon': AppIcons.helpdeskIcon, 
        'title': context.appLang.helpCenter
      },
      {
        'icon': AppIcons.settingsIcon,
        'title': context.appLang.appSettings,
        'onTap': () {
          context.router.push(const SettingsAppRoute());
        }
      },
      {
        'icon': AppIcons.languageIcon,
        'title': context.appLang.language,
        'onTap': () {
          context.router.push(const LanguageRoute());
        }
      },
    ];

    return Column(
      children: menuItems.map((item) => MenuItem(
        context: context, 
        icon: item['icon'] as String, 
        title: item['title'] as String, 
        onTap: item['onTap'] as VoidCallback?)
      ).toList(),
    );
  }
}