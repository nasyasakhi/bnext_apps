import 'package:bnext/core/core.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:bnext/feature/dashboard/presentation/dashboard/components/banner_widget.dart';

class MiniSliderWidget extends StatefulWidget {
  const MiniSliderWidget(
      {super.key, required this.carouselData, required this.tittle});

  final String tittle;
  final List<BannerWidget> carouselData;

  @override
  State<MiniSliderWidget> createState() => _MiniSliderWidgetState();
}

class _MiniSliderWidgetState extends State<MiniSliderWidget> {
  int currentSliderIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.tittle,
            style: context.textTheme.titleSmall?.semiBold),
        CarouselSlider(
          options: CarouselOptions(
              height: 94,
              onPageChanged: (index, reason) {
                setState(() {
                  currentSliderIndex = index;
                });
              },
              viewportFraction: 0.6,
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
