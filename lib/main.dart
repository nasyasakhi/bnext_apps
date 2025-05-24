import 'package:bloc/bloc.dart';
import 'package:bnext/config/di/setup_injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:intl/intl.dart';

import 'package:bnext/app.dart';
import 'package:bnext/config/bloc/observer.dart';
import 'package:bnext/config/config.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // loading .env config
  try {
    await dotenv.load(fileName: ".env");
    print('.env loaded');
  } catch (e) {
    print('error loading .env : $e');
  }
  initLocale();

  await configureDependencies();
  Bloc.observer = MyBlocObserver();

  initLocale();
  runApp(BnextApp());
  setupInjection();
}

void initLocale() {
  Intl.defaultLocale = 'id';
}
