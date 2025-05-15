import 'package:bnext_fe/core/presentation/constants/sizes.dart';
import 'package:bnext_fe/features/dashboard/presentation/dashboard/components/banner_widget.dart';
import 'package:flutter/material.dart';
import '../../../config/config.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SliderWidget extends StatefulWidget {
  const SliderWidget(
      {super.key, required this.carouselData, this.isAutoPlay = false});

  final List<BannerWidget> carouselData;

  final bool isAutoPlay;

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  int currentSliderIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
              autoPlay: widget.isAutoPlay,
              height: 142,
              onPageChanged: (index, reason) {
                setState(() {
                  currentSliderIndex = index;
                });
              },
              viewportFraction: 0.95,
              padEnds: false,
              enableInfiniteScroll: false),
          items: widget.carouselData
              .map(
                (e) => Padding(
                  padding: const EdgeInsets.only(right: Sizes.p12),
                  child: e,
                ),
              )
              .toList(),
        ),
        AnimatedSmoothIndicator(
          activeIndex: currentSliderIndex,
          count: widget.carouselData.length,
          effect: const ExpandingDotsEffect(
              dotColor: AppColors.primary3,
              dotWidth: Sizes.p8,
              dotHeight: Sizes.p8,
              activeDotColor: AppColors.primary2),
        )
      ],
    );
  }
}
