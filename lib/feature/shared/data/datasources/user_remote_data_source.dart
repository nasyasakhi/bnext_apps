import '../data.dart';

abstract class UserRemoteDataSource {
  Future<UserModel> getUser();
  //Future<UserModel> getUserById(String id, String token);
}
