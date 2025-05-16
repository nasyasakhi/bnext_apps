import 'package:bnext_fe/core/presentation/constants/sizes.dart';
import 'package:bnext_fe/core/presentation/extension/extension.dart';
import 'package:bnext_fe/config/local/box_keys.dart';
import 'package:gap/gap.dart';
import 'package:hive/hive.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import '../../../../config/theme/theme.dart';
import '../../../../libraries/libraries.dart';
import 'package:bnext_fe/config/config.dart';


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

  final List<String> titles = [
    'Selamat Datang',
    'Fitur Hebat',
    'Mudah Digunakan',
    'Cepat & Aman',
  ];

  // _timer = Timer.periodic(Duration(seconds: 3), (Timer timer) {
  //   if (_currentPage < titles.length - 1) {
  //     _currentPage++;
  //   } else {
  //     _currentPage = 0;
  //   }
  //   _pageController.animateToPage(
  //     _currentPage,
  //     duration: Duration(milliseconds: 500),
  //     curve: Curves.easeInOut,
  //   );
  // });

  @override
  void dispose() {
    _pageController.dispose();
    // _timer?.cancel();
    super.dispose();
  }

  void _nextPage() {
    if (_currentPage < titles.length - 1) {
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
      body: CustomColumn(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
        children: [
          Align(
            alignment: Alignment.topRight,
            child: TextButton(
              onPressed: _navigateLogin,
              child: Text('Skip',
                  style: context.labelLarge?.toColor(AppColors.white)),
            ),
          ),
          const Spacer(),
          _mainSection(context)
        ],
      ),
    );
  }

  Widget _mainSection(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 40),
        SmoothPageIndicator(
          controller: _pageController,
          count: titles.length,
          effect: const WormEffect(
            radius: 40,
            dotHeight: 5,
            dotColor: AppColors.primary2,
            activeDotColor: AppColors.primary3,
          ),
        ),
        const SizedBox(height: 30), // jarak kecil aja
        SizedBox(
          height: 200, // atur tinggi yang pas buat PageView-nya
          child: PageView.builder(
            controller: _pageController,
            itemCount: titles.length,
            onPageChanged: (index) => setState(() => _currentPage = index),
            itemBuilder: (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    titles[index],
                    textAlign: TextAlign.center,
                    style: context.headlineLarge?.toWeight(FontWeight.w700),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'Lorem ipsum dolor sit amet...',
                    textAlign: TextAlign.center,
                    style: context.bodyMedium,
                  ),
                ],
              );
            },
          ),
        ),
        const Gap(Sizes.p32),
        PrimaryButton(
          text: 'Selanjutnya',
          onPressed: _nextPage,
          width: MediaQuery.of(context).size.width * 0.7,
        ),
      ],
    );
  }
}
