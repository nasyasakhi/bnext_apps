import 'package:bnext_fe/config/config.dart';
import 'package:bnext_fe/core/domain/domain.dart';
import 'package:bnext_fe/features/shared/domain/entities/entities.dart';
import 'package:bnext_fe/features/shared/domain/usecase/get_token.dart';
import 'package:bnext_fe/features/shared/domain/usecase/logout_use_case.dart';
import 'package:bnext_fe/features/shared/presentation/profile/cubit/user_cubit.dart';
import 'package:dio/dio.dart';


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
