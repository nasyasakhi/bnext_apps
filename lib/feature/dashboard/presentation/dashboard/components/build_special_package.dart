import 'package:auto_route/auto_route.dart';
import 'package:bnext/config/router/app_router.dart';
import 'package:bnext/core/core.dart';
import 'package:bnext/feature/dashboard/presentation/dashboard/components/banner_widget.dart';
import 'package:bnext/libraries/components/navigator/navigator_widget.dart';
import 'package:bnext/libraries/components/slider/slider_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BuildSpecialPackage extends StatelessWidget {
  const BuildSpecialPackage({
    super.key,
    required this.context,
  });

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 28.0, right: 20),
          child: NavigatorWidget(
            tittle: context.appLang.buyBnext,
            description: context.appLang.choosePackage,
          ),
        ),
        const Gap(Sizes.p16),
        Padding(
          padding: const EdgeInsets.only(left: Sizes.p20),
          child: SliderWidget(
            isAutoPlay: true,
            carouselData: [
              BannerWidget(
                onTap: () {
                  context.router.push(const PromoRoute());
                },
              ),
              BannerWidget(
                onTap: () {
                  context.router.push(const PromoRoute());
                },
              ),
              BannerWidget(
                onTap: () {
                  context.router.push(const PromoRoute());
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}