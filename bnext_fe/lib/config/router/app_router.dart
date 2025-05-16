import 'package:auto_route/auto_route.dart';
import 'package:bnext_fe/config/di/di.dart';
import 'package:bnext_fe/config/router/guards/onboarding_guard.dart';
import 'package:bnext_fe/config/router/guards/splash_guard.dart';

import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';

part 'app_router.gr.dart';

@singleton
@AutoRouterConfig(
  replaceInRouteName: 'Page,Route',
)
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        CustomRoute(
            page: SplashRoute.page,
            path: '/splash',
            transitionsBuilder: TransitionsBuilders.slideLeft),
        CustomRoute(
            page: OnboardingRoute.page,
            path: '/onboarding',
            transitionsBuilder: TransitionsBuilders.slideLeft),
        CustomRoute(
            page: PreloginRoute.page,
            path: '/prelogin',
            guards: [
              locator<OnboardingGuards>(),
            ],
            transitionsBuilder: TransitionsBuilders.slideLeft),
        CustomRoute(
          transitionsBuilder: TransitionsBuilders.slideLeft,
          page: UserRegisterRoute.page,
          path: '/user-register',
        ),
        CustomRoute(
          transitionsBuilder: TransitionsBuilders.slideLeft,
          page: OtpRoute.page,
          path: '/otp/:email',
        ),
        CustomRoute(
          transitionsBuilder: TransitionsBuilders.slideLeft,
          page: UserLoginRoute.page,
          path: '/user-login',
        ),
        CustomRoute(
            initial: true,
            path: '/home',
            page: MainRoute.page,
            transitionsBuilder: TransitionsBuilders.slideLeft,
            guards: [
              locator<SplashGuard>(),
            ],
            children: [
              AutoRoute(
                page: DashboardRoute.page,
              ),
              AutoRoute(
                page: HistoryRoute.page,
              ),
              AutoRoute(
                page: RewardRoute.page,
              ),
              AutoRoute(
                page: ProfileRoute.page,
              ),
            ]),
        CustomRoute(
          page: PaymentMethodRoute.page,
          transitionsBuilder: TransitionsBuilders.slideLeft,
          path: '/payment-method',
        ),
        CustomRoute(
          page: OttProdudctRoute.page,
          transitionsBuilder: TransitionsBuilders.slideLeft,
          path: '/bnext/ott',
        ),
        CustomRoute(
          page: OttProductOrderRoute.page,
          transitionsBuilder: TransitionsBuilders.slideLeft,
          path: '/bnext/ott/order',
        ),
        CustomRoute(
          page: InternetProductRoute.page,
          transitionsBuilder: TransitionsBuilders.slideLeft,
          path: '/bnext/internet',
        ),
        CustomRoute(
          page: InternetProductOrderRoute.page,
          transitionsBuilder: TransitionsBuilders.slideLeft,
          path: '/bnext/internet/order',
        ),
        CustomRoute(
          page: BnextProductRoute.page,
          transitionsBuilder: TransitionsBuilders.slideLeft,
          path: '/bnext/product',
        ),
        CustomRoute(
          page: BnextProductOrderRoute.page,
          transitionsBuilder: TransitionsBuilders.slideLeft,
          path: '/bnext/product/order',
        ),
        CustomRoute(
          page: BnextProductCoRoute.page,
          transitionsBuilder: TransitionsBuilders.slideLeft,
          path: '/bnext/product/co',
        ),
        CustomRoute(
          page: ProductOngkirRoute.page,
          transitionsBuilder: TransitionsBuilders.slideLeft,
          path: '/bnext/product/co/ongkir',
        ),
        CustomRoute(
          page: ProductVoucherRoute.page,
          transitionsBuilder: TransitionsBuilders.slideLeft,
          path: '/bnext/product/co/voucher',
        ),
        CustomRoute(
          page: ProductDetailAddressRoute.page,
          transitionsBuilder: TransitionsBuilders.slideLeft,
          path: '/bnext/product/adress/detail',
        ),
        CustomRoute(
          page: ProductAddAddressRoute.page,
          transitionsBuilder: TransitionsBuilders.slideLeft,
          path: '/bnext/product/adress/add',
        ),
        CustomRoute(
          transitionsBuilder: TransitionsBuilders.slideLeft,
          page: RewardDetailRoute.page,
          path: '/reward/detail',
        ),
        CustomRoute(
          transitionsBuilder: TransitionsBuilders.slideLeft,
          page: ProfileEditRoute.page,
          path: '/profile/edit',
        ),
        CustomRoute(
          transitionsBuilder: TransitionsBuilders.slideLeft,
          page: SettingsAppRoute.page,
          path: '/profile/settings-app',
        ),
        CustomRoute(
          transitionsBuilder: TransitionsBuilders.slideLeft,
          page: LanguageRoute.page,
          path: '/language',
        ),
        CustomRoute(
          transitionsBuilder: TransitionsBuilders.slideLeft,
          page: PromoRoute.page,
          path: '/promo',
        ),
        CustomRoute(
          transitionsBuilder: TransitionsBuilders.slideLeft,
          page: PromoDetailRoute.page,
          path: '/promo/detail',
        ),
        CustomRoute(
          transitionsBuilder: TransitionsBuilders.slideLeft,
          page: PartnershipRoute.page,
          path: '/partnership',
        ),
        CustomRoute(
          transitionsBuilder: TransitionsBuilders.slideLeft,
          page: VideoAppsRoute.page,
          path: '/video-apps',
        ),
      ];
}
