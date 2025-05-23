import 'package:bnext/feature/auth/data/models/login_response.dart';

import '../../params/login_params.dart';
import '../../params/register_params.dart';
import '../../params/verify_otp_params.dart';

abstract class AuthRemoteDataSource {
  Future<LoginResponse> login(LoginParams params);

  // Future<TokenModel> login(LoginParams params);

  Future<Object> register(RegisterParams params);
  Future<Object> verifyOtp(VerifyOtpParams params);
  Future<Object> sendOtp(VerifyOtpParams params);

  // Future<Object> resetPassword(ResetPasswordParams params);
}
