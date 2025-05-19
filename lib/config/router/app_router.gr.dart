// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    BnextProductCoRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const BnextProductCoPage(),
      );
    },
    BnextProductOrderRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const BnextProductOrderPage(),
      );
    },
    BnextProductRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const BnextProductPage(),
      );
    },
    DashboardRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DashboardPage(),
      );
    },
    DashboardRouteOld.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DashboardPageOld(),
      );
    },
    HistoryDetailRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HistoryDetailPage(),
      );
    },
    HistoryRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HistoryPage(),
      );
    },
    InternetProductOrderRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const InternetProductOrderPage(),
      );
    },
    InternetProductRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const InternetProductPage(),
      );
    },
    LanguageRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LanguagePage(),
      );
    },
    MainRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MainPage(),
      );
    },
    OnboardingRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OnboardingPage(),
      );
    },
    OtpRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<OtpRouteArgs>(
          orElse: () => OtpRouteArgs(email: pathParams.getString('email')));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: OtpPage(
          key: args.key,
          email: args.email,
        ),
      );
    },
    OttProductOrderRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OttProductOrderPage(),
      );
    },
    OttProdudctRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OttProdudctPage(),
      );
    },
    PartnershipRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PartnershipPage(),
      );
    },
    PaymentMethodRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PaymentMethodPage(),
      );
    },
    PreloginRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PreloginPage(),
      );
    },
    ProductAddAddressRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProductAddAddressPage(),
      );
    },
    ProductDetailAddressRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProductDetailAddressPage(),
      );
    },
    ProductOngkirRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProductOngkirPage(),
      );
    },
    ProductVoucherRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProductVoucherPage(),
      );
    },
    ProfileEditRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfileEditPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfilePage(),
      );
    },
    PromoDetailRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PromoDetailPage(),
      );
    },
    PromoRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PromoPage(),
      );
    },
    RewardDetailRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RewardDetailPage(),
      );
    },
    RewardRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RewardPage(),
      );
    },
    SettingsAppRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SettingsAppPage(),
      );
    },
    SplashRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SplashPage(),
      );
    },
    UserLoginRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const UserLoginPage(),
      );
    },
    UserRegisterRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const UserRegisterPage(),
      );
    },
    VideoAppsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const VideoAppsPage(),
      );
    },
  };
}

/// generated route for
/// [BnextProductCoPage]
class BnextProductCoRoute extends PageRouteInfo<void> {
  const BnextProductCoRoute({List<PageRouteInfo>? children})
      : super(
          BnextProductCoRoute.name,
          initialChildren: children,
        );

  static const String name = 'BnextProductCoRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [BnextProductOrderPage]
class BnextProductOrderRoute extends PageRouteInfo<void> {
  const BnextProductOrderRoute({List<PageRouteInfo>? children})
      : super(
          BnextProductOrderRoute.name,
          initialChildren: children,
        );

  static const String name = 'BnextProductOrderRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [BnextProductPage]
class BnextProductRoute extends PageRouteInfo<void> {
  const BnextProductRoute({List<PageRouteInfo>? children})
      : super(
          BnextProductRoute.name,
          initialChildren: children,
        );

  static const String name = 'BnextProductRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [DashboardPage]
class DashboardRoute extends PageRouteInfo<void> {
  const DashboardRoute({List<PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [DashboardPageOld]
class DashboardRouteOld extends PageRouteInfo<void> {
  const DashboardRouteOld({List<PageRouteInfo>? children})
      : super(
          DashboardRouteOld.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRouteOld';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HistoryDetailPage]
class HistoryDetailRoute extends PageRouteInfo<void> {
  const HistoryDetailRoute({List<PageRouteInfo>? children})
      : super(
          HistoryDetailRoute.name,
          initialChildren: children,
        );

  static const String name = 'HistoryDetailRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HistoryPage]
class HistoryRoute extends PageRouteInfo<void> {
  const HistoryRoute({List<PageRouteInfo>? children})
      : super(
          HistoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'HistoryRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [InternetProductOrderPage]
class InternetProductOrderRoute extends PageRouteInfo<void> {
  const InternetProductOrderRoute({List<PageRouteInfo>? children})
      : super(
          InternetProductOrderRoute.name,
          initialChildren: children,
        );

  static const String name = 'InternetProductOrderRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [InternetProductPage]
class InternetProductRoute extends PageRouteInfo<void> {
  const InternetProductRoute({List<PageRouteInfo>? children})
      : super(
          InternetProductRoute.name,
          initialChildren: children,
        );

  static const String name = 'InternetProductRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LanguagePage]
class LanguageRoute extends PageRouteInfo<void> {
  const LanguageRoute({List<PageRouteInfo>? children})
      : super(
          LanguageRoute.name,
          initialChildren: children,
        );

  static const String name = 'LanguageRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MainPage]
class MainRoute extends PageRouteInfo<void> {
  const MainRoute({List<PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [OnboardingPage]
class OnboardingRoute extends PageRouteInfo<void> {
  const OnboardingRoute({List<PageRouteInfo>? children})
      : super(
          OnboardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [OtpPage]
class OtpRoute extends PageRouteInfo<OtpRouteArgs> {
  OtpRoute({
    Key? key,
    required String email,
    List<PageRouteInfo>? children,
  }) : super(
          OtpRoute.name,
          args: OtpRouteArgs(
            key: key,
            email: email,
          ),
          rawPathParams: {'email': email},
          initialChildren: children,
        );

  static const String name = 'OtpRoute';

  static const PageInfo<OtpRouteArgs> page = PageInfo<OtpRouteArgs>(name);
}

class OtpRouteArgs {
  const OtpRouteArgs({
    this.key,
    required this.email,
  });

  final Key? key;

  final String email;

  @override
  String toString() {
    return 'OtpRouteArgs{key: $key, email: $email}';
  }
}

/// generated route for
/// [OttProductOrderPage]
class OttProductOrderRoute extends PageRouteInfo<void> {
  const OttProductOrderRoute({List<PageRouteInfo>? children})
      : super(
          OttProductOrderRoute.name,
          initialChildren: children,
        );

  static const String name = 'OttProductOrderRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [OttProdudctPage]
class OttProdudctRoute extends PageRouteInfo<void> {
  const OttProdudctRoute({List<PageRouteInfo>? children})
      : super(
          OttProdudctRoute.name,
          initialChildren: children,
        );

  static const String name = 'OttProdudctRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PartnershipPage]
class PartnershipRoute extends PageRouteInfo<void> {
  const PartnershipRoute({List<PageRouteInfo>? children})
      : super(
          PartnershipRoute.name,
          initialChildren: children,
        );

  static const String name = 'PartnershipRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PaymentMethodPage]
class PaymentMethodRoute extends PageRouteInfo<void> {
  const PaymentMethodRoute({List<PageRouteInfo>? children})
      : super(
          PaymentMethodRoute.name,
          initialChildren: children,
        );

  static const String name = 'PaymentMethodRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PreloginPage]
class PreloginRoute extends PageRouteInfo<void> {
  const PreloginRoute({List<PageRouteInfo>? children})
      : super(
          PreloginRoute.name,
          initialChildren: children,
        );

  static const String name = 'PreloginRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProductAddAddressPage]
class ProductAddAddressRoute extends PageRouteInfo<void> {
  const ProductAddAddressRoute({List<PageRouteInfo>? children})
      : super(
          ProductAddAddressRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProductAddAddressRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProductDetailAddressPage]
class ProductDetailAddressRoute extends PageRouteInfo<void> {
  const ProductDetailAddressRoute({List<PageRouteInfo>? children})
      : super(
          ProductDetailAddressRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProductDetailAddressRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProductOngkirPage]
class ProductOngkirRoute extends PageRouteInfo<void> {
  const ProductOngkirRoute({List<PageRouteInfo>? children})
      : super(
          ProductOngkirRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProductOngkirRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProductVoucherPage]
class ProductVoucherRoute extends PageRouteInfo<void> {
  const ProductVoucherRoute({List<PageRouteInfo>? children})
      : super(
          ProductVoucherRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProductVoucherRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProfileEditPage]
class ProfileEditRoute extends PageRouteInfo<void> {
  const ProfileEditRoute({List<PageRouteInfo>? children})
      : super(
          ProfileEditRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileEditRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProfilePage]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PromoDetailPage]
class PromoDetailRoute extends PageRouteInfo<void> {
  const PromoDetailRoute({List<PageRouteInfo>? children})
      : super(
          PromoDetailRoute.name,
          initialChildren: children,
        );

  static const String name = 'PromoDetailRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [PromoPage]
class PromoRoute extends PageRouteInfo<void> {
  const PromoRoute({List<PageRouteInfo>? children})
      : super(
          PromoRoute.name,
          initialChildren: children,
        );

  static const String name = 'PromoRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RewardDetailPage]
class RewardDetailRoute extends PageRouteInfo<void> {
  const RewardDetailRoute({List<PageRouteInfo>? children})
      : super(
          RewardDetailRoute.name,
          initialChildren: children,
        );

  static const String name = 'RewardDetailRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RewardPage]
class RewardRoute extends PageRouteInfo<void> {
  const RewardRoute({List<PageRouteInfo>? children})
      : super(
          RewardRoute.name,
          initialChildren: children,
        );

  static const String name = 'RewardRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SettingsAppPage]
class SettingsAppRoute extends PageRouteInfo<void> {
  const SettingsAppRoute({List<PageRouteInfo>? children})
      : super(
          SettingsAppRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsAppRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [UserLoginPage]
class UserLoginRoute extends PageRouteInfo<void> {
  const UserLoginRoute({List<PageRouteInfo>? children})
      : super(
          UserLoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserLoginRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [UserRegisterPage]
class UserRegisterRoute extends PageRouteInfo<void> {
  const UserRegisterRoute({List<PageRouteInfo>? children})
      : super(
          UserRegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserRegisterRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [VideoAppsPage]
class VideoAppsRoute extends PageRouteInfo<void> {
  const VideoAppsRoute({List<PageRouteInfo>? children})
      : super(
          VideoAppsRoute.name,
          initialChildren: children,
        );

  static const String name = 'VideoAppsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
