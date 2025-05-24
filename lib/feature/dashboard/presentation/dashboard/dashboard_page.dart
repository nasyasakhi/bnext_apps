import 'package:auto_route/auto_route.dart';
import 'package:bnext/feature/dashboard/presentation/dashboard/components/game_channel_item.dart';
import 'package:bnext/feature/dashboard/presentation/dashboard/components/game_slider_widget.dart';
import 'package:bnext/feature/shared/domain/entities/entities.dart';
import 'package:bnext/feature/shared/presentation/profile/cubit/cubit.dart';
import 'package:bnext/libraries/components/slider/slider_partnership.dart';
import 'package:bnext/libraries/components/slider/slider_product.dart';
import 'package:bnext/libraries/components/slider/slider_widget_slider.dart';
import 'package:bnext/libraries/components/url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import 'package:bnext/config/config.dart';
import 'package:bnext/core/core.dart';
import 'package:bnext/libraries/components/navigator/navigator_widget.dart';
import 'package:bnext/libraries/libraries.dart';
import 'package:bnext/feature/dashboard/presentation/dashboard/components/app_bar.dart';
import 'package:bnext/feature/dashboard/presentation/dashboard/components/potrait_slider_widget.dart';
import 'package:bnext/feature/dashboard/presentation/dashboard/components/product_card.dart';
import 'package:bnext/feature/dashboard/presentation/dashboard/components/video_app_iitem.dart';
import 'package:bnext/feature/dashboard/presentation/dashboard/components/video_slider_widget.dart';

@RoutePage()
class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}



class _DashboardPageState extends State<DashboardPage>
    with SingleTickerProviderStateMixin {
  UserEntity? user;

  late AnimationController _opacityAnimationController;
  late Animation<double> _opacityTween;

  List sliders = [];
  @override
  void initState() {
    super.initState();
    user = context.read<UserCubit>().state.user;
    _opacityAnimationController = AnimationController(
      vsync: this,
      duration: Duration.zero,
    );
    _opacityTween =
        Tween<double>(begin: 0, end: 1).animate(_opacityAnimationController);
  }
  @override
  Widget build(BuildContext context) {
    return _body();
  }
  @override
  void dispose() {
    _opacityAnimationController.dispose();

    super.dispose();
  }


  Widget _body() {
    return CustomScaffold(
      body: NotificationListener<ScrollNotification>(
        onNotification: scrollListener,
        child: CustomColumn(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DashboardAppBar(
              opacityAnimationController: _opacityAnimationController,
              opacityTween: _opacityTween,
              onTapNotification: () {},
            ),
            Expanded(child: _mainSection()),
          ],
        ),
      ),
    );
  }
    Widget _mainSection() {
      return CustomScrollViewWrapper(
          physic: const AlwaysScrollableScrollPhysics(),
          slivers: [
            const SliverGap(Sizes.p12),
            SliverToBoxAdapter(
              child: _buildUserProfile(),
            ),
            const SliverGap(Sizes.p12),
            const ReusableSliderWidget(category: 'promo-banner'),
           const SliverGap(Sizes.p12),
           const ReusableSliderPartnership(category: 'partnership-banner'),
          const SliverGap(Sizes.p12),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(left: Sizes.p20),
              child: PotraitSliderWidget(
                tittle: context.appLang.bnextProducts,
                carouselData: [
                  ProductCard(
                    onTap: () {
                      context.router.push(const BnextProductRoute());
                    },
                    color: AppColors.primaryMain,
                    title: 'Digital Smart\nBox Device',
                  ),
                  ProductCard(
                    onTap: () {
                      context.router.push(const OttProductRoute());
                    },
                    color: AppColors.primary2,
                    title: 'OTT Channels\nProvider',
                  ),
                  ProductCard(
                    onTap: () {
                      context.router.push(const InternetProductRoute());
                    },
                    color: AppColors.primary3,
                    title: 'Internet service\nprogram',
                  ),
                ],
              ),
            ),
          ),
          const SliverGap(Sizes.p24),
          SliverToBoxAdapter(
            child: _buildSpecialPackage(),
          ),
          const SliverGap(Sizes.p24),
          SliverToBoxAdapter(
              child: Padding(
                  padding: const EdgeInsets.only(left: Sizes.p20),
                  child: VideoSliderWidget(carouselData: [
                    VideoAppItem(
                      asset: AppImages.viuLogo,
                      onTap: () {
                        context.router.push(const VideoAppsRoute());
                      },
                    ),
                    VideoAppItem(
                      asset: AppImages.netflixLogo,
                      onTap: () {
                        context.router.push(const VideoAppsRoute());
                      },
                    ),
                    VideoAppItem(
                      asset: AppImages.vidioLogo,
                      onTap: () {
                        context.router.push(const VideoAppsRoute());
                      },
                    ),
                    VideoAppItem(
                      asset: AppImages.disneyLogo,
                      onTap: () {
                        context.router.push(const VideoAppsRoute());
                      },
                    ),
                    VideoAppItem(
                      asset: AppImages.wetvLogo,
                      onTap: () {
                        context.router.push(const VideoAppsRoute());
                      },
                    ),
                  ], tittle: 'Video Apps'))),
          const SliverGap(Sizes.p24),
          SliverToBoxAdapter(
              child: Padding(
                  padding: const EdgeInsets.only(left: Sizes.p20),
                  child: GameSliderWidget(carouselData: [
                    GameChannelItem(
                      asset: GameImages.pubgLogo,
                      title: 'PUBG Mobile',
                      onTap: () {
                        openStore('com.tencent.ig');
                      },
                    ),
                    GameChannelItem(
                      asset: GameImages.mobileLegendLogo,
                      title: 'Mobile Legends',
                      onTap: () {
                        openStore('com.mobile.legends');
                      },
                    ),
                    GameChannelItem(
                      asset: GameImages.freeFireLogo,
                      title: 'Free Fire',
                      onTap: () {
                        openStore('com.dts.freefireth');
                      },
                    ),
                    GameChannelItem(
                      asset: GameImages.robloxLogo,
                      title: 'Roblox',
                      onTap: () {
                        openStore('com.roblox.client');
                      },
                    ),

                    
                  ], tittle: 'Game Channels'))),
        ]);
  }
  Widget _buildUserProfile() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              context.router.push(const ProfileRoute());
            },
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 1),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.asset(
                  AppImages.profileAvatar,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                context.appLang.greeting,
                style: context.labelMedium?.normal
              ),
              Text(
                user?.username ?? 'Username',
                style: context.labelMedium?.semiBold
              ),
              const Gap(Sizes.p4),
              Row(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                    decoration: BoxDecoration(
                      color: const Color(0xFF711DB0),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Text(
                      'VIP',
                      style: context.bodySmall?.semiBold,
                    ),
                  ),
                  const Gap(Sizes.p8),
                  const Icon(
                    Icons.circle,
                    color: AppColors.neutral10,
                    size: 10,
                  ),
                  const Gap(Sizes.p4),
                  Text(
                    '1.000 Poin',
                    style: context.bodySmall?.white,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
  Widget _buildSpecialPackage() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 28.0, right: 20),
          child: NavigatorWidget(
            description: context.appLang.choosePackage,
            tittle: context.appLang.buyBnext
          ),
        ),
        const Gap(Sizes.p16),
        const SliderProductWidget(category: 'product-banner'),

      ],
    );
  }
  bool scrollListener(ScrollNotification scrollInfo) {
    var scroll = false;
    if (scrollInfo.metrics.axis == Axis.vertical) {
      _opacityAnimationController.animateTo(scrollInfo.metrics.pixels / 40);
      return scroll = true;
    }
    return scroll;
  }
}