import 'package:bnext/config/router/app_router.dart';
import 'package:bnext/libraries/components/card_widget/product_card.dart';
import 'package:bnext/libraries/components/card_widget/product_card_product.dart';
import 'package:bnext/libraries/components/card_widget/product_card_product_image_local.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

class RewardGrid extends StatelessWidget {
  const RewardGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      shrinkWrap: true,
      crossAxisCount: 2,
      mainAxisSpacing: 16,
      crossAxisSpacing: 16,
      childAspectRatio: 0.7,
      children: List.generate(4, (index) {
        return ProductCardLocalImage(
          title: 'Reward Anniversary Bnext',
          description: '200 Poin',
          description2: '3000 Voucher Tersedia',
          imageUrl: 'assets/images/smartbox1.png',
          onTap: () {
            context.router.push(const RewardDetailRoute());
          }, 
        );
      }),
    );
  }
}