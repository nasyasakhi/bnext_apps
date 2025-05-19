import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/data/error/error.dart';
import '../../../../core/domain/domain.dart';
import '../domain.dart';
import '../repositories/repositories.dart';

@lazySingleton
class SaveTokenUseCase implements UseCase<void, TokenEntity> {
  const SaveTokenUseCase(this._repository);

  final UserRepository _repository;

  @override
  Future<Either<Failure, void>> call(TokenEntity params) {
    return _repository.saveToken(params);
  }
}
