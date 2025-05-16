import 'package:gap/gap.dart';
import '../../../../../core/core.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import '../../../../../libraries/libraries.dart';
import '../../../../../config/router/app_router.dart';
import '../../../../../libraries/components/card_widget/product_card.dart';

@RoutePage()
class OttProdudctPage extends StatefulWidget {
  const OttProdudctPage({super.key});

  @override
  State<OttProdudctPage> createState() => _OttProdudctPageState();
}

class _OttProdudctPageState extends State<OttProdudctPage> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: const PrimaryAppBar(
        enableBackButton: true,
        title: 'Ott Product',
      ),
      body: SingleChildScrollView(
          child: CustomColumn(
              padding: const EdgeInsets.all(16.0),
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            Text('Ott Channels',
                style: context.bodyLarge?.toWeight(FontWeight.w600)),
            const Gap(Sizes.p12),
            GridView.count(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              crossAxisCount: 2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              childAspectRatio: 0.8,
              children: [
                ProductCard(
                    title: 'Ott Channel',
                    description: 'Rp 10.000',
                    description2: 'lorem ipsum',
                    onTap: () {
                      context.router.push(const OttProductOrderRoute());
                    }),
                ProductCard(
                    title: 'Ott Channel',
                    description: 'Rp 20.000',
                    description2: 'lorem ipsum',
                    onTap: () {
                      context.router.push(const OttProductOrderRoute());
                    }),
                ProductCard(
                    title: 'Ott Channel',
                    description: 'Rp 20.000',
                    description2: 'lorem ipsum',
                    onTap: () {
                      context.router.push(const OttProductOrderRoute());
                    }),
                ProductCard(
                    title: 'Ott Channel',
                    description: 'Rp 20.000',
                    description2: 'lorem ipsum',
                    onTap: () {
                      context.router.push(const OttProductOrderRoute());
                    }),
                ProductCard(
                    title: 'Ott Channel',
                    description: 'Rp 20.000',
                    description2: 'lorem ipsum',
                    onTap: () {
                      context.router.push(const OttProductOrderRoute());
                    }),
                ProductCard(
                    title: 'Ott',
                    description: 'Rp 20.000',
                    description2: 'lorem ipsum',
                    onTap: () {
                      context.router.push(const OttProductOrderRoute());
                    }),
                ProductCard(
                    title: 'Ott',
                    description: 'Rp 20.000',
                    description2: 'lorem ipsum',
                    onTap: () {
                      context.router.push(const OttProductOrderRoute());
                    }),
              ],
            )
          ])),
    );
  }
}
