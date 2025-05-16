import 'package:bnext_fe/features/shared/domain/domain.dart';
import 'package:bnext_fe/core/data/data.dart';
import 'package:bnext_fe/core/domain/domain.dart';

import '../../params/verify_otp_params.dart';
import '../../../shared/domain/entities/token_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
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
