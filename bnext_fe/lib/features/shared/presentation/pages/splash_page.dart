import 'package:auto_route/auto_route.dart';
import 'package:bnext/config/di/di.dart';
import 'package:bnext/config/router/app_router.dart';
import 'package:bnext/config/theme/theme.dart';
import 'package:bnext/core/core.dart';
import 'package:bnext/feature/shared/domain/usecase/get_token.dart';
import 'package:bnext/libraries/libraries.dart';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../libraries/common/constants/constants.dart';
import '../../domain/entities/entities.dart';
import '../../domain/usecase/usecase.dart';

import '../profile/cubit/user_cubit.dart';

@RoutePage()
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => SplashPageState();
}

class SplashPageState extends State<SplashPage> {
  UserEntity? user;

  @override
  void initState() {
    super.initState();

    checkUser();
  }

  Future<void> checkUser() async {
    final token = await getToken();

    if (token != null) {
      await Future.wait([
        Future(() async {
          user = await locator<UserCubit>().getUser();
          if (user != null) setState(() {});
        }),
        Future.delayed(const Duration(seconds: 1), () => null),
      ]);
    }

    _navigateToOtherScreen(
      isAuthenticated: user != null,
    );
  }

  Future<TokenEntity?> getToken() async {
    final result = await locator<GetTokenUseCase>().call(NoParams());
    return result.fold((l) => null, (token) => token);
  }

  void _navigateToOtherScreen({
    required bool isAuthenticated,
  }) {
    if (isAuthenticated) {
      context.router.replace(const MainRoute());
    } else {
      context.router.replace(const PreloginRoute());
    }
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Gap(Sizes.p16),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  AppImages.bnextLogo,
                  height: 100,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Beyond limit with',
                      style:
                          context.titleMedium?.light.toColor(AppColors.white),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      ' Bnext',
                      style: context.titleMedium?.bold.toColor(AppColors.white),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                // Center(
                //   child: Text(
                //     '1.0.0',
                //     style: context.headlineLarge?.extraBold.orange
                //         .copyWith(fontSize: 10),
                //   ),
                // ),
              ],
            ),
          ),
          const Gap(Sizes.p24),
          // Image.asset(
          //   '  AppImages.splashObjBottom,',
          //   height: 184,
          //   width: 199,
          //   fit: BoxFit.contain,
          //   alignment: Alignment.centerRight,
          // ),
        ],
      ),
    );
  }
}
