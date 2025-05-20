import 'package:bnext/config/config.dart';
import 'package:bnext/feature/onboarding/presentation/onboarding/components/splash_content.dart';
import 'package:bnext/libraries/components/components.dart';
import 'package:flutter/material.dart';
import 'package:bnext/core/core.dart';

class OnbardingScreen extends StatefulWidget {
  const OnbardingScreen({super.key});

  @override
  State<OnbardingScreen> createState() => _OnbardingScreenState();
}

class _OnbardingScreenState extends State<OnbardingScreen> {
  int currentPage = 0;
  final PageController _pageController = PageController();

  List<Map<String, String>> splashData = [
    {
      'image' : 'assets/image/splashcontent1.png',
      'title' : 'lorem ipsum dolor 1',
      'text' : 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam non sollicitudin felis. Morbi non ullamcorper nisi. In hendrerit mauris eros, sed egestas ex lacinia nec.'
    },

    {
      'image' : 'assets/image/splashcontent2.png',
      'title' : 'lorem ipsum dolor 2',
      'text' : 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam non sollicitudin felis. Morbi non ullamcorper nisi. In hendrerit mauris eros, sed egestas ex lacinia nec.'
    },

    {
      'image' : 'assets/image/splashcontent3.png',
      'title' : 'lorem ipsum dolor 3',
      'text' : 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam non sollicitudin felis. Morbi non ullamcorper nisi. In hendrerit mauris eros, sed egestas ex lacinia nec.'
    },

    {
      'image' : 'assets/image/splashcontent4.png',
      'title' : 'lorem ipsum dolor 4',
      'text' : 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam non sollicitudin felis. Morbi non ullamcorper nisi. In hendrerit mauris eros, sed egestas ex lacinia nec.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/landing');
              }, 
              child: Text(
                'Skip',
                style: context.bodyMedium,
              )
            ),
          ] 
        ),
        body: SafeArea(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical:  Sizes.p20
                ),
                child: Column(
                  children: [
                    Expanded(
                      flex: 3,
                      child: SizedBox(
                        width: double.infinity,
                        child: PageView.builder(
                          controller: _pageController,
                          onPageChanged: (value) {
                            setState(() {
                              currentPage = value;
                            });
                          },
                          itemBuilder: (context, index) => SplashContent(
                            image: splashData[index]['image']!, 
                            title: splashData[index]['title']!, 
                            text: splashData[index]['text']!
                          )
                        ),
                      )
                    ),
                      PrimaryButton(
                        onPressed: ( ) {
                          if (currentPage == splashData.length - 1) {
                            Navigator.pushReplacementNamed(context, '/landing');
                          } else {
                            _pageController.animateToPage(
                              currentPage + 1, 
                              duration: Duration(milliseconds: 300), 
                              curve: Curves.ease
                            );
                          }
                        },
                        text: currentPage == splashData.length - 1 
                        ? 'Mulai Sekarang'
                        : 'Selanjutnya',
                      ),
                  ],
                ),
              ),

              // Dots Indicator
              Positioned(
                bottom: MediaQuery.of(context).size.height * 0.38,
                left: 0,
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    splashData.length, 
                    (index) => _dotsIndicator(index: index)
                  ),
                ),
              )
            ],
          )
        ),
      );
  }

  AnimatedContainer _dotsIndicator({required int index}) {
    return AnimatedContainer(
      margin: const EdgeInsets.symmetric(horizontal: Sizes.p4),
      duration: Duration(microseconds: 300),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Sizes.p20),
        color: currentPage == index ? AppColors.primary4 : AppColors.primary3
      ),
      width: 15,
      height: 7,
    );
  }
}