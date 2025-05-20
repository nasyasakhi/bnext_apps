import 'package:bnext/feature/dashboard/presentation/dashboard/components/game_channel_item.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../../../../../core/core.dart';

class GameSliderWidget extends StatefulWidget {
  const GameSliderWidget(
      {super.key, required this.tittle, required this.carouselData});

  final String tittle;
  final List<GameChannelItem> carouselData;

  @override
  State<GameSliderWidget> createState() => _GameSliderWidgetState();
}

class _GameSliderWidgetState extends State<GameSliderWidget> {
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
              height: 100,
              onPageChanged: (index, reason) {
                setState(() {
                  currentSliderIndex = index;
                });
              },
              viewportFraction: 0.30,
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