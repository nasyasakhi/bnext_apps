import 'package:bnext_fe/config/local/hive_service.dart';
import 'package:bnext_fe/core/data/network/api_client.dart';
import 'package:bnext_fe/core/data/network/api_interceptor.dart';
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
