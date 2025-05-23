import 'package:auto_route/auto_route.dart';
import 'package:bnext/config/router/app_router.dart';
import 'package:bnext/libraries/components/card_widget/product_card.dart';
import 'package:flutter/material.dart';

class BuildProductGrid extends StatelessWidget {
  const BuildProductGrid({
    super.key,
    required this.isDiscounted,
  });

  final bool isDiscounted;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: GridView.builder(
        scrollDirection: Axis.horizontal,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          childAspectRatio: 1.2,
        ),
        itemCount: 10,
        itemBuilder: (context, index) {
          return ProductCard(
            description2: 'Lorem ipsum dolor sit amet',
            description: 'Rp 10.000',
            onTap: () {
              context.router.push(const PromoDetailRoute());
            },
            title: 'Lorem ipsum dolor sit amet',
          );
        },
        padding: const EdgeInsets.symmetric(horizontal: 24),
      ),
    );
  }
}