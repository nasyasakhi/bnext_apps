
import 'package:bnext/feature/promo/presentation/promo/promo_page.dart';
import 'package:flutter/material.dart';

class BuildPromoHeader extends StatelessWidget {
  const BuildPromoHeader({
    super.key,
    required this.widget,
  });

  final PromoPage widget;

  @override
  Widget build(BuildContext context) {
  return Container(
    width: double.infinity,
    height: 220,
    foregroundDecoration: const BoxDecoration(),
    child: Image.network(
      widget.imageUrl,
      fit: BoxFit.cover,
    ),
  );
}
}