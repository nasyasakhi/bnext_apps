import 'package:bnext/libraries/common/constants/endpoints.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:bnext/feature/shared/data/models/user_model.dart';
import 'package:bnext/core/core.dart';
import '../user_remote_data_source.dart';

@LazySingleton(as: UserRemoteDataSource)
class UserRemoteDataSourceImpl implements UserRemoteDataSource {
  UserRemoteDataSourceImpl(this._dio);

  final Dio _dio;

  @override
  Future<UserModel> getUser() {
    // Implement sesuai kebutuhan atau kosongkan dulu
    throw UnimplementedError();
  }

  @override
  Future<UserModel> getUserById(String id, String token) {
    return DataSourceUtil.dioCatchOrThrow(() async {
      final response = await _dio.get(
        Endpoints.profileById(id),
        options: Options(
          headers: {
            'Authorization': 'Bearer $token',
          },
        ),
      );

      final data = response.data as Map<String, dynamic>;
      final user = data['result'] as Map<String, dynamic>;

      return UserModel.fromJson(user);
    });
  }
}
