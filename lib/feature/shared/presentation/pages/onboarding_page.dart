import 'package:bnext/config/local/box_keys.dart';
import 'package:gap/gap.dart';
import 'package:hive/hive.dart';
import 'package:bnext/core/core.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:bnext/config/theme/theme.dart';
import 'package:bnext/libraries/libraries.dart';
import 'package:bnext/config/config.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

@RoutePage()
class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  // Timer? _timer;

  final List<Map<String, dynamic>> onboarding = [
    {
      "image": OnboardingImages.onboarding1,
      "title": "Satu Perangkat, Banyak Manfaat",
      "desc": "Nikmati 3-in-1 Digital Smart Box: Set Top Box (STB), Digital Video Broadcasting (DVB), dan Internet Modem dalam satu alat praktis!"
    },
    {
      "image": OnboardingImages.onboarding2,
      "title": "Paket Hiburan Tanpa Batas",
      "desc": "Tersedia berbagai bundling spesial berisi aplikasi film, game, dan hiburan favoritmu dalam satu paket lengkap."
    },
    {
      "image": OnboardingImages.onboarding3,
      "title": "Internet Cepat, Dunia Terhubung",
      "desc": "Sambungkan duniamu dengan internet cepat tanpa batas. Hadirkan pengalaman online terbaik setiap hari."
    },
    {
      "image": OnboardingImages.onboarding4,
      "title": "Fitur Lengkap, Harga Bersahabat",
      "desc": "Dapatkan fitur-fitur canggih dan modern tanpa harus merogoh kocek dalam. Kualitas tinggi kini lebih terjangkau!"
    }
    
  ];



  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _nextPage() {
    if (_currentPage < onboarding.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    } else if (_currentPage == 3) {
      final box = Hive.box(BoxKeys.setting);
      box.put('hasSeenOnboarding', true);
      _navigateLogin();
    }
  }

  void _navigateLogin() {
    final box = Hive.box(BoxKeys.setting);
    box.put('hasSeenOnboarding', true);
    context.router.replaceNamed('/prelogin');
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: AppBar(
        actions: [
          Align(
            alignment: Alignment.topRight,
            child: TextButton(
              onPressed: _navigateLogin,
              child: Text(
                'Skip',
                style: context.labelLarge?.white
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(Sizes.p20),
        child: Column(
          children: [
            const Gap(Sizes.p20),
            _mainSection(context),
          ],
        ),
      ),
    );
  }

  Widget _mainSection(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            const SizedBox(height: 40),
            SizedBox(
              width: double.infinity,
              height: Sizes.screenHeight(context) * 0.6,
              child: PageView.builder(
                controller: _pageController,
                itemCount: onboarding.length,
                onPageChanged: (index) => setState(() => _currentPage = index),
                itemBuilder: (context, index) {
                  final data = onboarding[index];
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        data['image']!,
                        width: Sizes.screenWidth(context) * 0.8,
                      ),
                      const Gap(Sizes.p80),
                      Text(
                        data['title']!,
                        textAlign: TextAlign.center,
                        style: context.titleMedium?.semiBold,
                      ),
                      const SizedBox(height: 12),
                      Text(
                        data['desc']!,
                        textAlign: TextAlign.center,
                        style: context.bodyMedium,
                      ),
                    ],
                  );
                },
              ),
            ),
            Positioned(
              bottom: Sizes.screenHeight(context) * 0.15,
              left: 0,
              right: 0,
              child: Center(
                child: SmoothPageIndicator(
                  controller: _pageController,
                  count: onboarding.length,
                  effect: const WormEffect(
                    radius: 40,
                    dotHeight: 5,
                    dotColor: AppColors.primary2,
                    activeDotColor: AppColors.primary3,
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: Sizes.p32),
        PrimaryButton(
          text: 'Selanjutnya',
          onPressed: _nextPage,
          width: MediaQuery.of(context).size.width * 0.7,
       ),
      ],
    );
  }
}
