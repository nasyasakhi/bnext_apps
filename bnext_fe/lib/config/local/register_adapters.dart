import 'package:bnext_fe/features/shared/data/data.dart';
import 'package:hive/hive.dart';

void registerAdapters() {
  Hive.registerAdapter(TokenObjectAdapter());
  Hive.registerAdapter(UserObjectAdapter());
  Hive.registerAdapter(UserProfileObjectAdapter());
}
