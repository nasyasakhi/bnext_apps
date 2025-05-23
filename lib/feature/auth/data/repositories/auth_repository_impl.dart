import 'package:bnext/config/local/box_keys.dart';
import 'package:bnext/feature/shared/data/mapper/user_mapper.dart';
import 'package:bnext/feature/shared/data/object/token_object.dart';
import 'package:bnext/feature/shared/domain/domain.dart';
import 'package:dartz/dartz.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/data/error/failure.dart';
import '../../../../core/data/util/util.dart';
import '../../../shared/data/datasources/datasources.dart';
import '../../domain/domain.dart';
import '../../params/login_params.dart';
import '../../params/register_params.dart';
import '../../params/verify_otp_params.dart';
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
      final loginResponse = await _remoteDataSource.login(params);

      // Cek token valid
      if (loginResponse.token.isEmpty) {
        throw Exception("Token from login is empty");
      }

      // Simpan token sebagai TokenObject
      await _userLocalDataSource.saveToken(
        TokenObject(
          token: loginResponse.token,
          tokenExpiresAt: null, // bisa set expired time kalau perlu
        ),
      );

      // Ambil user profile
      final userResponse = await _userRemoteDataSource.getUser();

      // Validasi hasil getUser
      if (userResponse == null) {
        throw Exception("User profile not found after login");
      }

      // Simpan user ke Hive
      await _userLocalDataSource.saveUser(userResponse.toObject());

      return userResponse.toEntity();
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

        // verifikasi OTP, tapi gak expect token
        await _remoteDataSource.verifyOtp(params);

        // baru login untuk dapat token dan user
        final loginResponse = await _remoteDataSource
            .login(LoginParams(password: password, username: username));
        //await _userLocalDataSource.saveToken(loginResponse.token);

        final user = await _userRemoteDataSource.getUser();
        await _userLocalDataSource.saveUser(user.toObject());

        return user.toEntity();
      },
    );
  }

}
