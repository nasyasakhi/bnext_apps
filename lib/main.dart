import 'package:bloc/bloc.dart';
import 'package:bnext/config/di/setup_injection.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'app.dart';
import 'config/bloc/observer.dart';
import 'config/config.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  await initFirebase('');
  Bloc.observer = MyBlocObserver();

  // const HiveService().init();
  initLocale();
  runApp(BnextApp());
  setupInjection();
}

Future<void> initFirebase(String env) async {
  // final firebaseOptions = env == Flavor.prod.name
  //     ? firebase_prod.DefaultFirebaseOptions.currentPlatform
  //     : env == Flavor.staging.name
  //         ? firebase_staging.DefaultFirebaseOptions.currentPlatform
  //         : firebase_dev.DefaultFirebaseOptions.currentPlatform;
  // await Firebase.initializeApp(options: firebaseOptions);
}
void initLocale() {
  Intl.defaultLocale = 'id';
  // ValidationBuilder.setLocale('id');
  // timeago.setLocaleMessages('id', timeago.IdMessages());
  // timeago.setDefaultLocale('id');
}

// Future<void> initNotification() async {
//   await locator<NotificationService>().initLocalNotification();
//   unawaited(locator<NotificationService>().initForegroundFCM());
// }