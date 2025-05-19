import 'package:bnext/feature/shared/domain/domain.dart';

import '../../../../core/core.dart';
import '../../../shared/domain/entities/token_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../params/login_params.dart';
import '../domain.dart';

@lazySingleton
class LoginUseCase implements UseCase<UserEntity, LoginParams> {
  LoginUseCase(this._repository);

  final AuthRepository _repository;

  @override
  Future<Either<Failure, UserEntity>> call(LoginParams params) {
    return _repository.login(params);
  }
}
