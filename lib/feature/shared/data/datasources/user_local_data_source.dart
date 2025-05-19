
import 'package:bnext/feature/shared/data/data.dart';

abstract class UserLocalDataSource {
  Future<TokenObject?> getToken();

  Future<void> saveToken(TokenObject token);

  Future<void> deleteToken();

  Future<UserObject?> getUser();

  Future<void> saveUser(UserObject user);

  Future<void> deleteUser();
}
