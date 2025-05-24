import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:bnext/core/core.dart';
import 'package:bnext/feature/dashboard/presentation/dashboard/components/video_app_iitem.dart';

class VideoSliderWidget extends StatefulWidget {
  const VideoSliderWidget(
      {super.key, required this.carouselData, required this.tittle});

  final String tittle;
  final List<VideoAppItem> carouselData;

  @override
  State<VideoSliderWidget> createState() => _VideoSliderWidgetState();
}

class _VideoSliderWidgetState extends State<VideoSliderWidget> {
  int currentSliderIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.tittle,
          style: context.textTheme.titleSmall?.semiBold
        ),
        const Gap(Sizes.p8),
        CarouselSlider(
          options: CarouselOptions(
              height: 68,
              onPageChanged: (index, reason) {
                setState(() {
                  currentSliderIndex = index;
                });
              },
              viewportFraction: 0.23,
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
      ],
    );
  }
}
