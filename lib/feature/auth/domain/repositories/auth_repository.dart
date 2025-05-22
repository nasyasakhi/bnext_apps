import 'package:bnext/feature/shared/domain/domain.dart';

import '../../params/login_params.dart';
import '../../params/register_params.dart';
import '../../params/verify_otp_params.dart';
import '../../../shared/domain/entities/token_entity.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/data/error/failure.dart';

abstract class AuthRepository {
  Future<Either<Failure, UserEntity>> login(LoginParams params);
  Future<Either<Failure, Object>> register(RegisterParams params);
  Future<Either<Failure, UserEntity>> verifyOtp(VerifyOtpParams params);
  Future<Either<Failure, Object>> sendOtp(VerifyOtpParams params);

  // Future<Either<Failure, Object>> resetPassword(ResetPasswordParams params);
}
