import 'package:bnext/feature/shared/presentation/profile/cubit/user_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:bnext/config/config.dart';
import 'package:bnext/config/router/app_route_observer.dart';
import 'package:bnext/libraries/common/helper/helper.dart';

class BnextApp extends StatelessWidget {
  BnextApp({super.key});

  AppTheme get _theme => AppTheme();
  final router = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => locator<UserCubit>(),
        ),
        // BlocProvider(
        //   create: (context) => SubjectBloc(),
        // ),
      ],
      child: AnnotatedRegion<SystemUiOverlayStyle>(
        value: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
        ),
        child: MaterialApp.router(
          // supportedLocales: const [
          //   Locale('id'),
          //   Locale('en'),
          // ],
          localizationsDelegates: const [
            // GlobalMaterialLocalizations.delegate,
            // GlobalCupertinoLocalizations.delegate,
            // GlobalWidgetsLocalizations.delegate,
            // MonthYearPickerLocalizations.delegate,
          ],
          // locale: const Locale('id'),
          routeInformationParser: router.defaultRouteParser(),
          routerDelegate: router.delegate(
            navigatorObservers: () => [AppRouteObserver()],
          ),
          theme: _theme.lightTheme,
          // routerConfig: router.config(),
          builder: (context, child) {
            return BlocListener<UserCubit, UserState>(
              listenWhen: (previous, current) =>
                  previous.user != null && current.user == null,
              listener: _userStateListener,
              child: MediaQuery(
                data: MediaQuery.of(context)
                    .copyWith(textScaler: TextScaler.noScaling),
                child: child!,
              ),
            );
          },
        ),
      ),
    );
  }

  void _userStateListener(BuildContext context, UserState state) {
    if (state.user == null) {
      SnackbarHelper.showError(
        context,
        'Unauthorized request, silahkan masuk kembali.',
      );
      RestartHelper.restartApp();
    }
  }
}
