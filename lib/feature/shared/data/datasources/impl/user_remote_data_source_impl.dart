import 'package:bnext/feature/auth/data/datasources/session_manager.dart';
import 'package:bnext/libraries/common/constants/endpoints.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:bnext/feature/shared/data/models/user_model.dart';
import 'package:bnext/core/core.dart';
import '../user_remote_data_source.dart';
@LazySingleton(as: UserRemoteDataSource)
class UserRemoteDataSourceImpl implements UserRemoteDataSource {
  final Dio _dio;
  final SessionManager _sessionManager;

  UserRemoteDataSourceImpl(this._dio, this._sessionManager);

  @override
  Future<UserModel> getUser() {
    final token = _sessionManager.token;
    final userId = _sessionManager.userId;

    if (token == null || userId == null) {
      throw Exception('User is not authenticated');
    }

    return DataSourceUtil.dioCatchOrThrow(() async {
      final response = await _dio.get(
        Endpoints.profileById(userId),
        options: Options(
          headers: {
            'Authorization': 'Bearer $token',
          },
        ),
      );

      final data = response.data;
      final profileData = data['profile'];
      
      if (profileData is Map<String, dynamic>) {
        return UserModel.fromJson(profileData);
      } else {
        throw const FormatException('Unexpected response format: profile is not a Map');
      }
    });
  }
}
