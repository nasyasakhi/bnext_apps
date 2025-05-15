import 'package:bnext_fe/core/data/util/data_source_util.dart';
import 'package:bnext_fe/features/shared/data/data.dart';
import 'package:bnext_fe/libraries/common/constants/endpoints.dart' show Endpoints;
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: UserRemoteDataSource)
class UserRemoteDataSourceImpl extends DataSourceUtil
    implements UserRemoteDataSource {
  UserRemoteDataSourceImpl(this._dio);

  final Dio _dio;

  @override
  Future<UserModel> getUser({String? fcmToken}) {
    return DataSourceUtil.dioCatchOrThrow(() async {
      final response = await _dio.get(
        Endpoints.profile,
        queryParameters: {
          if (fcmToken != null) 'fcm_token': fcmToken,
        },
      );

      final data = response.data as Map<String, Object?>;
      final user = data['result'] as Map<String, Object?>;

      return UserModel.fromJson(user);
    });
  }
}