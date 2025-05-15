import 'package:bnext/core/domain/domain.dart';
import 'package:dio/dio.dart';

import '../../../config/di/di.dart';
import '../../../feature/shared/domain/domain.dart';
import '../../../feature/shared/domain/usecase/get_token.dart';
import '../../../feature/shared/domain/usecase/logout_use_case.dart';
import '../../../feature/shared/presentation/profile/profile.dart';

class AuthInterceptor extends Interceptor {
  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final token = await _getToken();

    if (token != null) {
      options.headers
          .putIfAbsent('Authorization', () => 'Bearer ${token.accessToken}');
    } else {
      options.headers.removeWhere((key, value) => key == 'Authorization');
    }

    return super.onRequest(options, handler);
  }

  @override
  Future<void> onError(
DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    if (err.response?.statusCode == 401) {
      await logout();
    }

    return super.onError(err, handler);
  }

  Future<TokenEntity?> _getToken() async {
    final token = await locator<GetTokenUseCase>().call(NoParams());
    return token.fold((l) => null, (token) => token);
  }

  Future<void> logout() async {
    await locator<LogoutUseCase>().call(NoParams());
    await locator<UserCubit>().clearData();
  }
}
