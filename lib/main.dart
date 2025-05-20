// import 'package:bloc/bloc.dart';
// import 'package:bnext/config/bloc/observer.dart';
// import 'package:bnext/config/config.dart';
// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
// import 'package:bnext/app.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await configureDependencies();
//   await initFirebase('');
//   Bloc.observer = MyBlocObserver();

//   // const HiveService().init();
//   initLocale();
//   runApp(BnextApp());
// }

// Future<void> initFirebase(String env) async {
//   // final firebaseOptions = env == Flavor.prod.name
//   //     ? firebase_prod.DefaultFirebaseOptions.currentPlatform
//   //     : env == Flavor.staging.name
//   //         ? firebase_staging.DefaultFirebaseOptions.currentPlatform
//   //         : firebase_dev.DefaultFirebaseOptions.currentPlatform;
//   // await Firebase.initializeApp(options: firebaseOptions);
// }
// void initLocale() {
//   Intl.defaultLocale = 'id';
//   // ValidationBuilder.setLocale('id');
//   // timeago.setLocaleMessages('id', timeago.IdMessages());
//   // timeago.setDefaultLocale('id');
// }

// // Future<void> initNotification() async {
// //   await locator<NotificationService>().initLocalNotification();
// //   unawaited(locator<NotificationService>().initForegroundFCM());
// // }

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:intl/intl.dart';
import 'package:bloc/bloc.dart';

import 'package:bnext/app.dart';
import 'package:bnext/config/bloc/observer.dart';
import 'package:bnext/config/config.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Load .env config
  await dotenv.load(fileName: ".env");

  // Set locale ke bahasa Indonesia
  initLocale();

  // Dependency Injection
  await configureDependencies();

  // (Opsional) Firebase init – belum aktif karena dikomen
  await initFirebase(dotenv.env['FLAVOR'] ?? 'dev');

  // Bloc observer buat debugging
  Bloc.observer = MyBlocObserver();

  // Run aplikasi
  runApp(BnextApp());
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
  // Bisa tambahin validation locale, timeago, dll
  // ValidationBuilder.setLocale('id');
  // timeago.setLocaleMessages('id', timeago.IdMessages());
  // timeago.setDefaultLocale('id');
}
