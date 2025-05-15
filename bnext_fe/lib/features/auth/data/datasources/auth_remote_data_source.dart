import '../../params/login_params.dart';

import '../models/token_model.dart';
import '../../params/register_params.dart';
import '../../params/verify_otp_params.dart';

abstract class AuthRemoteDataSource {
  Future<TokenModel> login(LoginParams params);

  Future<Object> register(RegisterParams params);
  Future<Object> verifyOtp(VerifyOtpParams params);
  Future<Object> sendOtp(VerifyOtpParams params);

  // Future<Object> resetPassword(ResetPasswordParams params);
}
