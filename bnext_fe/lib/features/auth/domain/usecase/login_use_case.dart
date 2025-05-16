import 'package:bnext_fe/core/data/error/failure.dart';
import 'package:bnext_fe/features/shared/domain/domain.dart';
import 'package:bnext_fe/core/domain/domain.dart';

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
