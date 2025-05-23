import 'package:badges/badges.dart' as badge;
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:bnext/config/config.dart';
import 'package:bnext/core/core.dart';
import 'package:bnext/libraries/libraries.dart';

class DashboardAppBar extends StatefulWidget {
  const DashboardAppBar({
    super.key,
    required this.opacityAnimationController,
    required this.opacityTween,
    this.isAnimateBackground = true,
    required this.onTapNotification,
  });

  final AnimationController opacityAnimationController;
  final Animation<double> opacityTween;
  final bool isAnimateBackground;
  final VoidCallback onTapNotification;

  @override
  State<DashboardAppBar> createState() => _DashboardAppBarState();
}

class _DashboardAppBarState extends State<DashboardAppBar> {
  int unreadNotificationCount = 1;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: widget.opacityAnimationController,
      builder: (context, child) => AppBar(
        backgroundColor: Colors.transparent.withOpacity(
          widget.isAnimateBackground ? widget.opacityTween.value : 1,
        ),
        titleSpacing: 20,
        title: Row(
          children: [
            Image.asset(
              AppImages.bnextLogo,
              height: 45,
              width: 127,
            ),
            const Gap(Sizes.p20),
            Expanded(
              child: Container(
                width: 170,
                height: 40,
                decoration: BoxDecoration(
                  color: AppColors.primary3,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 9),
                  child: Row(
                    children: [
                      const Icon(Icons.search_rounded,
                          color: AppColors.white, size: 24),
                      const Gap(Sizes.p4),
                      Text(
                        context.appLang.search,
                        style: context.bodySmall
                            ?.toColor(AppColors.white)
                            .copyWith(fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        actions: <Widget>[
          Center(
            child: badge.Badge(
              showBadge: unreadNotificationCount > 0,
              badgeContent: Text(
                unreadNotificationCount > 99
                    ? '99+'
                    : '$unreadNotificationCount',
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
              child: Image.asset(AppIcons.notifIcon, height: 25,),
            ),
          ),
          const Gap(Sizes.p20),
        ],
      ),
    );
  }
}
