import 'package:bnext/feature/pre_login/presentation/pre_login/components/bottom_section.dart';
import 'package:gap/gap.dart';
import 'package:bnext/core/core.dart';
import 'package:bnext/config/config.dart';
import 'package:flutter/material.dart';
import 'package:bnext/libraries/libraries.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class PreloginPage extends StatelessWidget {
  const PreloginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: PrimaryAppBar(
        enableBackButton: false,
        actions: [
          IconButton(
            onPressed: () => context.router.push(const LanguageRoute()),
            icon: Image.asset(AppIcons.languageIcon, height: 24),
          )
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: Sizes.p36, vertical: Sizes.p40),
          child: CustomColumn(
            children: [
              const Gap(Sizes.p24),
              Image.asset(
                AppImages.bnextLogo,
                height: 100,
              ),
              const Gap(Sizes.p20),
              Text(
                'Selamat Datang di Aplikasi BNEXT',
                style: context.titleMedium?.bold.toColor(AppColors.white),
                textAlign: TextAlign.center,
              ),
              const Gap(Sizes.p16),
              Text(
                'Siap Menjelajah Dunia Menghubungkan Masa Depan, Hari Ini Tanpa Batas Dengan Menikmati Fitur Canggih Nggak Harus Mahal!',
                style: context.bodyMedium
                    ?.toColor(AppColors.white.withOpacity(0.8)),
                textAlign: TextAlign.center,
              ),
              const Spacer(),
              CustomColumn(
                padding: const EdgeInsets.symmetric(horizontal: Sizes.p20),
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  PrimaryButton(
                    height: 50,
                    width: double.infinity,
                    text: 'Daftar Sekarang',
                    onPressed: () => _navigateToRegisterUser(context),
                  ),
                  const Gap(Sizes.p8),
                  SecondaryButton(
                    height: 50,
                    width: double.infinity,
                    text: 'Masuk ke Akun yang Ada',
                    onPressed: () => _navigateToUserLogin(context),
                    backgroundColor: Colors.transparent,
                    // : AppColors.white,
                  ),
                ],
              ),
              const Spacer(),
              const Gap(Sizes.p32),
              BottomSection(context: context),
              const Gap(Sizes.p20),
            ],
          ),
        ),
      ),
    );
  }

  void _navigateToRegisterUser(BuildContext context) {
    context.router.push(const UserRegisterRoute());
  }

  void _navigateToUserLogin(BuildContext context) {
    context.router.push(const UserLoginRoute());
  }
}
