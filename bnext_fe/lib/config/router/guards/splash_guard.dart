import 'package:auto_route/auto_route.dart';
import 'package:bnext_fe/config/router/app_router.dart';
import 'package:injectable/injectable.dart';

bool _isOpenSplash = true;

@singleton
class SplashGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if (_isOpenSplash) {
      _isOpenSplash = false;
      router.pushAndPopUntil(
        const SplashRoute(),
        predicate: (_) => false,
      );
    } else {
      resolver.next();
    }
  }
}
