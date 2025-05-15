import '../../../../../core/data/util/util.dart';
import '../auth_remote_data_source.dart';
import '../../../params/register_params.dart';
import '../../../params/verify_otp_params.dart';
import '../../../../../libraries/common/constants/endpoints.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../params/login_params.dart';

import '../../models/token_model.dart';

@LazySingleton(as: AuthRemoteDataSource)
class AuthRemoteDataSourceImpl extends DataSourceUtil
    implements AuthRemoteDataSource {
  AuthRemoteDataSourceImpl(this._dio);

  final Dio _dio;

  @override
  Future<TokenModel> login(LoginParams params) {
    return DataSourceUtil.dioCatchOrThrow(() async {
      final data = {
        'username': params.username,
        'password': params.password,
      };

      final response = await _dio.post(
        Endpoints.login,
        data: data,
      );

      // return TokenModel.fromJson(
      //   response.data['result'] as Map<String, Object?>,
      // );
      final json = TokenModel.fromJson(response.data['result']);
      print('test ${json.toJson()}');

      return json;
    });
  }

  @override
  Future<Object> register(RegisterParams params) {
    return DataSourceUtil.dioCatchOrThrow(() async {
      final response = await _dio.post(
        Endpoints.register,
        data: params.toJson(),
      );
      return response.data;
    });
  }

  @override
  Future<Object> sendOtp(VerifyOtpParams params) {
    return DataSourceUtil.dioCatchOrThrow(
      () async {
        final response =
            await _dio.post(Endpoints.sendOtp, data: {'email': params.email});

        return response.data;
      },
    );
  }

  @override
  Future<Object> verifyOtp(VerifyOtpParams params) {
    return DataSourceUtil.dioCatchOrThrow(
      () async {
        final response =
            await _dio.post(Endpoints.verifOtp, data: params.toJson());
        return response.data;
      },
    );
  }
}
