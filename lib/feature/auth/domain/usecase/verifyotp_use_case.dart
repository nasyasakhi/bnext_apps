import 'package:bnext/feature/shared/domain/domain.dart';

import '../../../../core/core.dart';
import '../../params/verify_otp_params.dart';
import '../../../shared/domain/entities/token_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../params/login_params.dart';
import '../domain.dart';

@lazySingleton
class VerifyotpUseCase implements UseCase<UserEntity, VerifyOtpParams> {
  VerifyotpUseCase(this._repository);

  final AuthRepository _repository;

  @override
  Future<Either<Failure,UserEntity>> call(VerifyOtpParams params) {
    return _repository.verifyOtp(params);
  }
}
