import 'package:bnext/feature/shared/data/object/token_object.dart';
import 'package:bnext/feature/shared/data/object/user_profile_object.dart';
import 'package:hive/hive.dart';
import 'package:bnext/feature/shared/data/object/user_object.dart';

void registerAdapters() {
  Hive.registerAdapter(TokenObjectAdapter());
  Hive.registerAdapter(UserObjectAdapter());
	Hive.registerAdapter(UserProfileObjectAdapter());
}
