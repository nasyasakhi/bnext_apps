import 'package:bnext_fe/core/data/error/failure.dart';
import 'package:bnext_fe/core/data/util/repository_util.dart';
import 'package:bnext_fe/features/shared/data/mapper/token_mapper.dart';
import 'package:bnext_fe/features/shared/data/mapper/user_mapper.dart';
import 'package:bnext_fe/features/shared/domain/repositories/user_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/domain.dart';

import '../datasources/datasources.dart';

@LazySingleton(as: UserRepository)
class UserRepositoryImpl extends RepositoryUtil implements UserRepository {
  UserRepositoryImpl(this._remoteDataSource, this._localDataSource);

  final UserRemoteDataSource _remoteDataSource;
  final UserLocalDataSource _localDataSource;

  @override
  Future<Either<Failure, TokenEntity?>> getToken() {
    return catchOrThrow(() async {
      final token = await _localDataSource.getToken();
      return token?.toEntity();
    });
  }

  @override
  Future<Either<Failure, void>> saveToken(TokenEntity token) {
    return catchOrThrow(() async {
      await _localDataSource.saveToken(token.toObject());
    });
  }

  @override
  Future<Either<Failure, UserEntity>> getUser() {
    return catchCachedData(
      strategy: CacheStrategy.refresh,
      fetchRemote: () async {
        final userRemote = await _remoteDataSource.getUser();
        return userRemote.toEntity();
      },
      fetchLocal: () async {
        final userLocal = await _localDataSource.getUser();
        return userLocal?.toEntity();
      },
      saveLocal: (data) async {
        await _localDataSource.saveUser(data.toObject());
      },
    );
  }

  @override
  Future<Either<Failure, void>> saveUser(UserEntity user) {
    return catchOrThrow(() async {
      await _localDataSource.saveUser(user.toObject());
    });
  }

  @override
  Future<Either<Failure, void>> logout() {
    return catchOrThrow(() async {
      await _localDataSource.deleteUser();
      await _localDataSource.deleteToken();
    });
  }
}
