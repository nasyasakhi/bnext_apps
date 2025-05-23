import 'package:auto_route/auto_route.dart';
import 'package:bnext/config/router/app_router.dart';
import 'package:bnext/core/presentation/constants/sizes.dart';
import 'package:bnext/feature/dashboard/presentation/dashboard/components/banner_widget.dart';
import 'package:bnext/libraries/components/slider/slider_widget.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class ReusableSliderWidget extends StatefulWidget {
  final String category;

  const ReusableSliderWidget({super.key, required this.category});

  @override
  State<ReusableSliderWidget> createState() => _ReusableSliderWidgetState();
}

class _ReusableSliderWidgetState extends State<ReusableSliderWidget> {
  final Dio _dio = Dio();
  List<dynamic> adsList = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    getAdsByCategory(widget.category);
  }

  void getAdsByCategory(String categoryName) async {
    try {
      final response = await _dio.get('http://172.16.4.105:4000/sliders/ads');

      if (response.statusCode == 200) {
        final List<dynamic> allAds = response.data['ads'] ?? [];

        final filteredAds = allAds.where((ad) {
          final category = ad['category']?['name'];
          return category == categoryName;
        }).toList();

        setState(() {
          adsList = filteredAds;
          isLoading = false;
        });
      }
    } catch (e) {
      print('Error loading ads: $e');
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return const SliverToBoxAdapter(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Center(child: CircularProgressIndicator()),
        ),
      );
    }

    if (adsList.isEmpty) {
      return const SliverToBoxAdapter(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Text('No ads found'),
        ),
      );
    }

    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(left: Sizes.p20),
        child: SliderWidget(
          isAutoPlay: true,
          carouselData: adsList.map((ad) {
            final String imageUrl = ad['image_url'] ?? '';
            final fullImageUrl = 'http://172.16.4.105:4000/$imageUrl';

            return BannerWidget(
              imageUrl: fullImageUrl,
              onTap: () {
                context.router.push(
                  PromoRoute(
                    imageUrl: fullImageUrl,
                    title: ad['title'] ?? 'Promo',
                  ),
                );
              },

            );
          }).toList(),
        ),
      ),
    );
  }
}
