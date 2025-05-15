
import 'package:bnext/feature/shared/domain/repositories/repositories.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/core.dart';
import '../domain.dart';

@lazySingleton
class LogoutUseCase implements UseCase<void, NoParams> {
  const LogoutUseCase(this._repository);

  final UserRepository _repository;

  @override
  Future<Either<Failure, void>> call(NoParams params) {
    return _repository.logout();
  }
}
