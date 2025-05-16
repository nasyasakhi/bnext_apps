// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import 'package:bnext_fe/features/auth/data/datasources/auth_remote_data_source.dart'
    as _i794;
import 'package:bnext_fe/features/auth/data/datasources/impl/auth_remote_data_source_impl.dart'
    as _i647;
import 'package:bnext_fe/features/auth/data/repositories/auth_repository_impl.dart'
    as _i263;
import 'package:bnext_fe/features/auth/domain/domain.dart' as _i640;
import 'package:bnext_fe/features/auth/domain/usecase/login_use_case.dart' as _i805;
import 'package:bnext_fe/features/auth/domain/usecase/register_use_case.dart' as _i717;
import 'package:bnext_fe/features/auth/domain/usecase/sendotp_use_case.dart' as _i480;
import 'package:bnext_fe/features/auth/domain/usecase/verifyotp_use_case.dart' as _i740;
import 'package:bnext_fe/features/auth/presentation/otp/cubit/otp_cubit.dart' as _i214;
import 'package:bnext_fe/features/auth/presentation/user_login/cubit/user_login_cubit.dart'
    as _i886;
import 'package:bnext_fe/features/auth/presentation/user_register/cubit/user_register_cubit.dart'
    as _i958;
import 'package:bnext_fe/features/shared/data/datasources/datasources.dart' as _i634;
import 'package:bnext_fe/features/shared/data/datasources/impl/user_local_data_source_impl.dart'
    as _i893;
import 'package:bnext_fe/features/shared/data/datasources/impl/user_remote_data_source_impl.dart'
    as _i458;
import 'package:bnext_fe/features/shared/data/repositories/user_repository_impl.dart'
    as _i178;
import 'package:bnext_fe/features/shared/domain/repositories/repositories.dart' as _i486;
import 'package:bnext_fe/features/shared/domain/usecase/get_token.dart' as _i202;
import 'package:bnext_fe/features/shared/domain/usecase/get_user.dart' as _i635;
import 'package:bnext_fe/features/shared/domain/usecase/logout_use_case.dart' as _i687;
import 'package:bnext_fe/features/shared/domain/usecase/save_token.dart' as _i485;
import 'package:bnext_fe/features/shared/domain/usecase/save_user.dart' as _i191;
import 'package:bnext_fe/features/shared/domain/usecase/usecase.dart' as _i523;
import 'package:bnext_fe/features/shared/presentation/profile/cubit/user_cubit.dart'
    as _i99;
import '../local/hive_service.dart' as _i388;
import '../router/app_router.dart' as _i81;
import '../router/guards/onboarding_guard.dart' as _i677;
import '../router/guards/splash_guard.dart' as _i174;
import 'core.injection.dart' as _i618;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final coreInjectionModule = _$CoreInjectionModule();
    await gh.factoryAsync<_i388.HiveService>(
      () => coreInjectionModule.hiveService,
      preResolve: true,
    );
    gh.singleton<_i81.AppRouter>(() => _i81.AppRouter());
    gh.singleton<_i677.OnboardingGuards>(() => _i677.OnboardingGuards());
    gh.singleton<_i174.SplashGuard>(() => _i174.SplashGuard());
    gh.lazySingleton<_i361.Dio>(() => coreInjectionModule.dio);
    gh.lazySingleton<_i794.AuthRemoteDataSource>(
        () => _i647.AuthRemoteDataSourceImpl(gh<_i361.Dio>()));
    gh.lazySingleton<_i634.UserRemoteDataSource>(
        () => _i458.UserRemoteDataSourceImpl(gh<_i361.Dio>()));
    gh.lazySingleton<_i634.UserLocalDataSource>(
        () => _i893.UserLocalDataSourceImpl());
    gh.lazySingleton<_i486.UserRepository>(() => _i178.UserRepositoryImpl(
          gh<_i634.UserRemoteDataSource>(),
          gh<_i634.UserLocalDataSource>(),
        ));
    gh.lazySingleton<_i640.AuthRepository>(() => _i263.AuthRepositoryImpl(
          gh<_i794.AuthRemoteDataSource>(),
          gh<_i634.UserRemoteDataSource>(),
          gh<_i634.UserLocalDataSource>(),
        ));
    gh.lazySingleton<_i805.LoginUseCase>(
        () => _i805.LoginUseCase(gh<_i640.AuthRepository>()));
    gh.lazySingleton<_i717.RegisterUseCase>(
        () => _i717.RegisterUseCase(gh<_i640.AuthRepository>()));
    gh.lazySingleton<_i480.SendotpUseCase>(
        () => _i480.SendotpUseCase(gh<_i640.AuthRepository>()));
    gh.lazySingleton<_i740.VerifyotpUseCase>(
        () => _i740.VerifyotpUseCase(gh<_i640.AuthRepository>()));
    gh.lazySingleton<_i202.GetTokenUseCase>(
        () => _i202.GetTokenUseCase(gh<_i486.UserRepository>()));
    gh.lazySingleton<_i635.GetUserUseCase>(
        () => _i635.GetUserUseCase(gh<_i486.UserRepository>()));
    gh.lazySingleton<_i485.SaveTokenUseCase>(
        () => _i485.SaveTokenUseCase(gh<_i486.UserRepository>()));
    gh.lazySingleton<_i191.SaveUserUseCase>(
        () => _i191.SaveUserUseCase(gh<_i486.UserRepository>()));
    gh.lazySingleton<_i687.LogoutUseCase>(
        () => _i687.LogoutUseCase(gh<_i486.UserRepository>()));
    gh.factory<_i886.UserLoginCubit>(
        () => _i886.UserLoginCubit(gh<_i640.LoginUseCase>()));
    gh.factory<_i214.OtpCubit>(() => _i214.OtpCubit(
          gh<_i740.VerifyotpUseCase>(),
          gh<_i480.SendotpUseCase>(),
        ));
    gh.factory<_i958.UserRegisterCubit>(
        () => _i958.UserRegisterCubit(gh<_i640.RegisterUseCase>()));
    gh.lazySingleton<_i99.UserCubit>(() => _i99.UserCubit(
          gh<_i635.GetUserUseCase>(),
          gh<_i523.SaveUserUseCase>(),
        ));
    return this;
  }
}

class _$CoreInjectionModule extends _i618.CoreInjectionModule {}