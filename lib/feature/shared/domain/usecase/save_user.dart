import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/data/error/error.dart';
import '../../../../core/domain/domain.dart';
import '../domain.dart';
import '../repositories/repositories.dart';

@lazySingleton
class SaveUserUseCase implements UseCase<void, UserEntity> {
  const SaveUserUseCase(this._repository);

  final UserRepository _repository;

  @override
  Future<Either<Failure, void>> call(UserEntity params) {
    return _repository.saveUser(params);
  }
}
