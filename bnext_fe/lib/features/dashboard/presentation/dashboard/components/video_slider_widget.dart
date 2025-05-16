import 'package:bnext_fe/core/presentation/constants/sizes.dart';
import 'package:bnext_fe/core/presentation/extension/extension.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'video_app_iitem.dart';

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
        Text(widget.tittle,
            style: context.textTheme.labelLarge?.toWeight(FontWeight.bold)),
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
              // aspectRatio: 16 / 9,
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
