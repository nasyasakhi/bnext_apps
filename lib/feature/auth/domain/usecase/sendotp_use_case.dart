import '../../../../core/core.dart';
import '../../params/verify_otp_params.dart';
import '../../../shared/domain/entities/token_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../params/login_params.dart';
import '../domain.dart';

@lazySingleton
class SendotpUseCase implements UseCase<Object, VerifyOtpParams> {
  SendotpUseCase(this._repository);

  final AuthRepository _repository;

  @override
  Future<Either<Failure,Object>> call(VerifyOtpParams params) {
    return _repository.sendOtp(params);
  }
}
