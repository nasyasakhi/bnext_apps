import 'package:bnext/core/core.dart';
import 'package:dartz/dartz.dart';

import '../entities/entities.dart';

abstract class UserRepository {
  Future<Either<Failure, TokenEntity?>> getToken();

  Future<Either<Failure, void>> saveToken(TokenEntity token);

  Future<Either<Failure, UserEntity>> getUser();

  Future<Either<Failure, void>> saveUser(UserEntity user);

  Future<Either<Failure, void>> logout();
}
