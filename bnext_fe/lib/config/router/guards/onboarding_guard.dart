import 'package:auto_route/auto_route.dart';
import 'package:bnext/config/router/app_router.dart';
import 'package:bnext/config/local/box_keys.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

@singleton
class OnboardingGuards extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    final box = Hive.box(BoxKeys.setting);
    final hasSeenOnboarding = box.get('hasSeenOnboarding', defaultValue: false);

    print('cek onboarding $hasSeenOnboarding');

    if (!hasSeenOnboarding) {
      router.pushAndPopUntil(
        const OnboardingRoute(),
        predicate: (_) => false,
      );
    } else {
      resolver.next();
    }
  }
}
