import 'package:bnext/feature/auth/data/datasources/session_manager.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/data/util/util.dart';
import '../../../params/login_params.dart';
import '../../../params/register_params.dart';
import '../../../params/verify_otp_params.dart';
import '../../models/login_response.dart';
import '../auth_remote_data_source.dart';

@LazySingleton(as: AuthRemoteDataSource)
class AuthRemoteDataSourceImpl extends DataSourceUtil
    implements AuthRemoteDataSource {
  AuthRemoteDataSourceImpl(this._dio, this._sessionManager);

  final Dio _dio;
  final SessionManager _sessionManager;  // declare session manager
@override
Future<LoginResponse> login(LoginParams params) {
  return DataSourceUtil.dioCatchOrThrow(() async {
    final response = await _dio.post(
      'http://172.16.4.105:4000/auth/login',
      data: {
        "login": params.username,
        "password": params.password,
      },
    );

    final data = response.data;

    if (data == null || data['user'] == null || data['token'] == null) {
      throw const FormatException('Missing required fields in login response');
    }

    final loginResponse = LoginResponse.fromJson(data);

    _sessionManager.saveSession(
      loginResponse.token,
      loginResponse.user.id.toString(),
    );

    return loginResponse;
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
