import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/data/util/util.dart';
import '../../../params/login_params.dart';
import '../../../params/register_params.dart';
import '../../../params/verify_otp_params.dart';
import '../../models/token_model.dart';
import '../auth_remote_data_source.dart';

@LazySingleton(as: AuthRemoteDataSource)
class AuthRemoteDataSourceImpl extends DataSourceUtil
    implements AuthRemoteDataSource {
  AuthRemoteDataSourceImpl(this._dio);

  final Dio _dio;

@override
Future<TokenModel> login(LoginParams params) {
  return DataSourceUtil.dioCatchOrThrow(() async {
    final response = await _dio.post(
      'http://172.16.4.105:4000/auth/login',
      data: {
        "login": params.username,
        "password": params.password,
      },
    );

    // response.data adalah Map<String, dynamic>, kita parsing ke TokenModel
    final tokenModel = TokenModel.fromJson(response.data);

    return tokenModel;
  });
}


  @override
  Future<Object> register(RegisterParams params) {
    return DataSourceUtil.dioCatchOrThrow(() async {
      final response = await _dio.post(
        'http://172.16.4.105:4000/auth/register', // ganti pakai URL API kamu
        data: {
          "username": params.username,
          "password": params.password,
          "email": params.email,
          "phone_number": params.phoneNumber,
        },
      );
      return response.data;


      
      
    });
  }


@override
Future<Object> sendOtp(VerifyOtpParams params) {
  
  return DataSourceUtil.dioCatchOrThrow(() async {
    print('[Flutter] Sending OTP to: ${params.email}'); // Tambahkan log ini
    final response = await _dio.post(
      'http://172.16.4.105:4000/auth/send-otp',
      data: {'email': params.email},
    );
    print('[Flutter] Response: ${response.data}');
    return response.data;
  });
}



  @override
  Future<Object> verifyOtp(VerifyOtpParams params) {
  return DataSourceUtil.dioCatchOrThrow(() async {
      print('[Flutter] Sending OTP to: ${params.email}'); // Tambahkan log ini
      print('[Flutter] Sending OTP to: ${params.otp}'); // Tambahkan log ini
      final response = await _dio.post(
        'http://172.16.4.105:4000/auth/verify-otp',
        data: {
          'email': params.email,
          'code': params.otp,
        },
      );
      print('[Flutter] Response: ${response.data}');
      print('[API] Response: ${response.data}');

      return response.data;
    });
  }
}
