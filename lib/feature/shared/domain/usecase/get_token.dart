import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/data/error/error.dart';
import '../../../../core/domain/domain.dart';
import '../domain.dart';
import '../repositories/repositories.dart';

@lazySingleton
class GetTokenUseCase implements UseCase<TokenEntity?, NoParams> {
  const GetTokenUseCase(this._repository);

  final UserRepository _repository;

  @override
  Future<Either<Failure, TokenEntity?>> call(NoParams params) {
    return _repository.getToken();
  }
}
