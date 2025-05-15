import 'product_card.dart';
import 'package:gap/gap.dart';
import '../../../../../core/core.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class PotraitSliderWidget extends StatefulWidget {
  const PotraitSliderWidget(
      {super.key, required this.carouselData, required this.tittle});

  final String tittle;
  final List<ProductCard> carouselData;

  @override
  State<PotraitSliderWidget> createState() => _PotraitSliderWidgetState();
}

class _PotraitSliderWidgetState extends State<PotraitSliderWidget> {
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
              height: 143,
              onPageChanged: (index, reason) {
                setState(() {
                  currentSliderIndex = index;
                });
              },
              viewportFraction: 0.38,
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
