import 'package:bnext/feature/shared/data/object/token_object.dart';
import 'package:bnext/feature/shared/data/object/user_profile_object.dart';
import 'package:bnext/config/local/box_keys.dart';
import 'package:hive/hive.dart';
import 'package:bnext/feature/shared/data/object/user_object.dart';
import 'package:path_provider/path_provider.dart';

class HiveService {
  const HiveService();

  Future<HiveService> init() async {
    final dbPath = await path;
    Hive.init(dbPath);

    registerAdapters();

    await initbox();
    return this;
  }

  Future<String> get path async {
    final appDocumentDir = await getApplicationDocumentsDirectory();
    return appDocumentDir.path;
  }

  void registerAdapters() {
    Hive
      ..registerAdapter(TokenObjectAdapter())
      ..registerAdapter(UserObjectAdapter())
      ..registerAdapter(UserProfileObjectAdapter());
  }

  Future<void> initbox() async {
    await Future.wait([
      Hive.openBox<TokenObject>(BoxKeys.token),
      Hive.openBox<UserObject>(BoxKeys.user),
      Hive.openBox(BoxKeys.setting),
      Hive.openBox(BoxKeys.credentialAuth),
    ]);
  }
}
