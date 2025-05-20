import 'package:auto_route/auto_route.dart';
import 'package:bnext/config/di/injection.dart';
import 'package:bnext/config/router/app_router.dart';
import 'package:bnext/config/theme/app_colors.dart';
import 'package:bnext/core/domain/usecase.dart';
import 'package:bnext/feature/shared/domain/usecase/logout_use_case.dart';
import 'package:bnext/libraries/components/button/secondary_button.dart';
import 'package:flutter/material.dart';

class LogoutButton extends StatelessWidget {
  const LogoutButton({
    super.key,
    required this.context,
  });

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50.0),
      child: SecondaryButton(
        width: double.infinity,
        text: 'Logout',
        onPressed: () async {
          await locator<LogoutUseCase>().call(NoParams());
          context.router.pushAndPopUntil(
            const PreloginRoute(),
            predicate: (_) => false,
          );
        },
        backgroundColor: AppColors.backGroundSecondary,
        borderColor: AppColors.white,
        borderWidth: 1,
      ),
    );
  }
}
