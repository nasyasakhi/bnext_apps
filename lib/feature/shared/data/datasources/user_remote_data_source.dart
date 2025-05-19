import '../data.dart';

abstract class UserRemoteDataSource {
  Future<UserModel> getUser();
}
