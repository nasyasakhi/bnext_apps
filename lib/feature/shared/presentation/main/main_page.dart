import 'package:gap/gap.dart';
import '../../../../config/config.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

import '../../../../core/presentation/constants/sizes.dart';

import '../../../../libraries/libraries.dart';

@RoutePage()
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      extendBody: true,
      routes: const [
        DashboardRoute(),
        HistoryRoute(),
        RewardRoute(),
        CustomerServiceRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 90,
              decoration: const BoxDecoration(
                color: AppColors.backGroundSecondary,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                      child: _buildNavItem(
                          AppIcons.homeIcon, "Home", 0, tabsRouter)),
                  Expanded(
                      child: _buildNavItem(
                          AppIcons.historiIcon, "History", 1, tabsRouter)),
                  const Gap(Sizes.p96),
                  Expanded(
                      child: _buildNavItem(
                          AppIcons.rewardIcon, "Reward", 2, tabsRouter)),
                  Expanded(
                      child: _buildNavItem(
                          AppIcons.chatIcon, "Chat", 3, tabsRouter)),
                ],
              ),
            ),
            Positioned(
              bottom: 18,
              child: GestureDetector(
                onTap: () => context.router.pushNamed('/bnext/product'),
                child: Container(
                  width: 65,
                  height: 65,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Center(
                    child: Image.asset(
                      AppImages.navbarLogo,
                      height: 60,
                      width: 60,
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
      transitionBuilder: (context, child, animation) {
        return Container(
          color: AppColors.backGroundPrimary, // bisa diganti sesuai tema kamu
          child: FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
      },
    );
  }

  Widget _buildNavItem(
      String assetPath, String label, int index, TabsRouter tabsRouter) {
    final isActive = tabsRouter.activeIndex == index;
    final color = isActive ? AppColors.primaryMain : AppColors.white;

    return Center(
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(12),
          splashColor: AppColors.primaryMain.withOpacity(0.2),
          highlightColor: AppColors.primaryMain.withOpacity(0.1),
          onTap: () => tabsRouter.setActiveIndex(index),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: SizedBox(
              width: 64,
              height: 60,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    assetPath,  
                    color: color,
                    height: 24,
                    width: 24,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    label,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: isActive ? AppColors.primaryMain : AppColors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
