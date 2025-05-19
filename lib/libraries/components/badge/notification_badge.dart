import 'package:badges/badges.dart' as badge;
import 'package:flutter/material.dart';

import '../../../config/config.dart';
import '../../../core/core.dart';
import '../../libraries.dart';

class NotificationBadge extends StatelessWidget {
  const NotificationBadge({
    super.key,
    required this.onTapNotification,
    this.iconColor = AppColors.primaryMain,
  });

  final VoidCallback onTapNotification;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    int unreadNotificationCount = 1;

    return badge.Badge(
      showBadge: unreadNotificationCount > 0,
      badgeContent: Text(
        unreadNotificationCount > 99 ? '99+' : '$unreadNotificationCount',
        style: const TextStyle(fontSize: 10).bold.white,
      ),
      badgeStyle: badge.BadgeStyle(
        shape: unreadNotificationCount > 99
            ? badge.BadgeShape.square
            : badge.BadgeShape.circle,
        borderRadius: BorderRadius.circular(100),
        elevation: 0,
        padding: unreadNotificationCount > 99
            ? const EdgeInsets.symmetric(
                vertical: 4,
                horizontal: 6,
              )
            : EdgeInsets.all(
                unreadNotificationCount > 9 ? 6 : 8,
              ),
        borderSide: const BorderSide(
          color: AppColors.neutral10,
        ),
      ),
      badgeAnimation: const badge.BadgeAnimation.scale(),
      child: CardWrapper(
        height: 40,
        width: 40,
        backgroundColor: AppColors.buttonPrimarylight,
        borderColor: AppColors.white,
        borderRadius: BorderRadius.circular(8),
        splashColor: AppColors.primaryMain,
        onTap: onTapNotification,
        child: Center(
          child: Icon(
            Icons.notifications,
            color: iconColor,
            size: 20,
          ),
        ),
      ),
    );
  }
}
