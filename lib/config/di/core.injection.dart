import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../core/data/network/api_client.dart';
import '../../core/data/network/api_interceptor.dart';
import '../local/hive_service.dart';

@module
abstract class CoreInjectionModule {
  @lazySingleton
  Dio get dio => ApiClient.createDefaultDio(
        baseUrl: '',
        interceptors: [AuthInterceptor()],
      );

  @preResolve
  Future<HiveService> get hiveService =>const HiveService().init();
}
