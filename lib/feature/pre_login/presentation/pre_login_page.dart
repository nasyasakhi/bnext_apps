import '../../../libraries/components/button/secondary_button.dart';
import 'package:gap/gap.dart';
import '../../../core/core.dart';
import '../../../config/config.dart';
import 'package:flutter/material.dart';
import '../../../libraries/libraries.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class PreloginPage extends StatelessWidget {
  const PreloginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: Sizes.p36, vertical: Sizes.p40),
          child: CustomColumn(
            children: [
              GestureDetector(
                onTap: () => context.router.push(const LanguageRoute()),
                child: Align(
                    alignment: Alignment.topRight,
                    child: Image.asset(AppIcons.languageIcon, height: 24)),
              ),
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
                style: context.bodySmall
                    ?.toColor(AppColors.white.withOpacity(0.8)),
                textAlign: TextAlign.center,
              ),
              const Spacer(),
              CustomColumn(
                padding: const EdgeInsets.symmetric(horizontal: Sizes.p20),
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  PrimaryButton(
                    width: double.infinity,
                    text: 'Daftar Sekarang',
                    onPressed: () => _navigateToRegisterUser(context),
                  ),
                  const Gap(Sizes.p8),
                  SecondaryButton(
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
              _bottomSection(context),
              const Gap(Sizes.p20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _bottomSection(BuildContext context) {
    return Text.rich(
      textAlign: TextAlign.center,
      TextSpan(
        children: [
          TextSpan(
            text: 'Dengan mengeklik ',
            style: context.labelSmall,
          ),
          TextSpan(
            text: 'Daftar ',
            style: context.labelSmall?.bold.toColor(AppColors.primaryMain),
          ),
          TextSpan(
            text: 'atau ',
            style: context.labelSmall,
          ),
          TextSpan(
            text: 'Masuk, ',
            style: context.labelSmall?.bold.toColor(AppColors.primaryMain),
          ),
          TextSpan(
            text: 'Anda menyetujui ',
            style: context.labelSmall,
          ),
          TextSpan(
            text: 'Persyaratan Layanan ',
            style: context.labelSmall?.bold.toColor(AppColors.primaryMain),
          ),
          TextSpan(
            text: 'kami. Pelajari cara kami memproses data Anda dalam ',
            style: context.labelSmall,
          ),
          TextSpan(
            text: 'Kebijakan Privasi ',
            style: context.labelSmall?.bold.toColor(AppColors.primaryMain),
          ),
          TextSpan(
            text: 'kami.',
            style: context.labelSmall,
          ),
        ],
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
