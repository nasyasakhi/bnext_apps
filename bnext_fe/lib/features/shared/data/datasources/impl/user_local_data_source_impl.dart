import 'package:bnext_fe/config/local/box_keys.dart' show BoxKeys;
import 'package:bnext_fe/core/data/util/data_source_util.dart';
import 'package:bnext_fe/features/shared/data/data.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: UserLocalDataSource)
class UserLocalDataSourceImpl extends DataSourceUtil
    implements UserLocalDataSource {
  @override
  Future<TokenObject?> getToken() async {
    return hiveCatchOrThrow(() async {
      final tokenBox = Hive.box<TokenObject>(BoxKeys.token);
      return tokenBox.get(0);
    });
  }

  @override
  Future<void> saveToken(TokenObject token) {
    return hiveCatchOrThrow(() async {
      final tokenBox = Hive.box<TokenObject>(BoxKeys.token);
      return tokenBox.put(0, token);
    });
  }

  @override
  Future<void> deleteToken() {
    return hiveCatchOrThrow(() async {
      final tokenBox = Hive.box<TokenObject>(BoxKeys.token);
      await tokenBox.delete(0);
    });
  }

  @override
  Future<UserObject?> getUser() {
    return hiveCatchOrThrow(() async {
      final userBox = Hive.box<UserObject>(BoxKeys.user);
      return userBox.get(0);
    });
  }

  @override
  Future<void> saveUser(UserObject user) {
    return hiveCatchOrThrow(() async {
      final userBox = Hive.box<UserObject>(BoxKeys.user);
      return userBox.put(0, user);
    });
  }

  @override
  Future<void> deleteUser() {
    return hiveCatchOrThrow(() async {
      final userBox = Hive.box<UserObject>(BoxKeys.user);
      await userBox.delete(0);
    });
  }
}