import 'package:bnext/config/local/box_keys.dart';
import 'package:bnext/feature/shared/data/mapper/user_mapper.dart';
import 'package:bnext/feature/shared/data/repositories/user_repository_impl.dart';
import 'package:bnext/feature/shared/domain/domain.dart';
import 'package:hive/hive.dart';

import '../../../../core/data/util/util.dart';
import '../../../shared/data/datasources/datasources.dart';
import '../../params/register_params.dart';
import '../../params/verify_otp_params.dart';
import '../../../shared/domain/entities/token_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/data/error/failure.dart';
import '../../domain/domain.dart';
import '../../params/login_params.dart';

import '../datasources/auth_remote_data_source.dart';
import '../mapper/mapper.dart';

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl extends RepositoryUtil implements AuthRepository {
  AuthRepositoryImpl(
    this._remoteDataSource,
    this._userRemoteDataSource,
    this._userLocalDataSource,
  );

  final AuthRemoteDataSource _remoteDataSource;
  final UserRemoteDataSource _userRemoteDataSource;
  final UserLocalDataSource _userLocalDataSource;

  @override
  Future<Either<Failure, UserEntity>> login(LoginParams params) {
    return catchOrThrow(
      () async {
        final token = await _remoteDataSource.login(params);
        await _userLocalDataSource.saveToken(token.toObject());

        final user = await _userRemoteDataSource.getUser();
        await _userLocalDataSource.saveUser(user.toObject());

        return user.toEntity();
      },
    );
  }

  @override
  Future<Either<Failure, Object>> register(RegisterParams params) {
    return catchOrThrow(
      () async {
        final data = await _remoteDataSource.register(params);
        return data;
      },
    );
  }

  @override
  Future<Either<Failure, Object>> sendOtp(VerifyOtpParams params) {
    return catchOrThrow(
      () async {
        final data = await _remoteDataSource.sendOtp(params);

        return data;
      },
    );
  }

  @override
  Future<Either<Failure, UserEntity>> verifyOtp(VerifyOtpParams params) {
    return catchOrThrow(
      () async {
        final box = Hive.box(BoxKeys.credentialAuth);
        final username = box.get('username');
        final password = box.get('password');

        await _remoteDataSource.verifyOtp(params);

        final token = await _remoteDataSource
            .login(LoginParams(password: password, username: username));
        await _userLocalDataSource.saveToken(token.toObject());

        final user = await _userRemoteDataSource.getUser();
        await _userLocalDataSource.saveUser(user.toObject());

        return user.toEntity();
      },
    );
  }
}
