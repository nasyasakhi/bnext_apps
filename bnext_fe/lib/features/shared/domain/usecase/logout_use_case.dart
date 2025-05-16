
import 'package:bnext_fe/core/data/error/failure.dart';
import 'package:bnext_fe/core/domain/usecase.dart';
import 'package:bnext_fe/features/shared/domain/repositories/user_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';


@lazySingleton
class LogoutUseCase implements UseCase<void, NoParams> {
  const LogoutUseCase(this._repository);

  final UserRepository _repository;

  @override
  Future<Either<Failure, void>> call(NoParams params) {
    return _repository.logout();
  }
}
