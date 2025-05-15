import 'package:bnext_fe/config/di/di.dart';
import 'package:bnext_fe/config/router/app_router.dart';

class RestartHelper {
  static void restartApp() {
    locator<AppRouter>().pushAndPopUntil(
      const PreloginRoute(),
      predicate: (_) => false,
    );
  }
}