import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class CoreInjectionModule {
  @lazySingleton
  Dio get dio => ApiClient.createDefaultDio(
        baseUrl: '',
        interceptors: [AuthInterceptor()],
      );

  @preResolve
  Future<HiveService> get hiveService => const HiveService().init();
}
