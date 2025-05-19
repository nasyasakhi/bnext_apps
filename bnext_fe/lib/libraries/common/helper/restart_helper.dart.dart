import 'package:bnext/config/di/di.dart';
import 'package:bnext/config/router/app_router.dart';

class RestartHelper {
  static void restartApp() {
    locator<AppRouter>().pushAndPopUntil(
      const PreloginRoute(),
      predicate: (_) => false,
    );
  }
}
