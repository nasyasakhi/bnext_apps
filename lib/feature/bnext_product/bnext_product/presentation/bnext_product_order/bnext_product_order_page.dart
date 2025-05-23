import 'package:auto_route/auto_route.dart';
import 'package:bnext/feature/bnext_product/bnext_product/data/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../config/router/app_router.dart';
import '../../../../../config/theme/theme.dart';
import '../../../../../core/core.dart';
import '../../../../../libraries/libraries.dart';

@RoutePage()
class BnextProductOrderPage extends StatefulWidget {
  final ProductModel product;


  const BnextProductOrderPage({super.key, required this.product});


  @override
  State<BnextProductOrderPage> createState() => _BnextProductOrderPageState();
}

class _BnextProductOrderPageState extends State<BnextProductOrderPage> {
  int quantity = 1;

  void incrementQuantity() {
    setState(() {
      quantity++;
    });
  }

  void decrementQuantity() {
    if (quantity > 1) {
      setState(() {
        quantity--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: const PrimaryAppBar(
        enableBackButton: true,
        title: 'Bnext Product Order',
      ),
      body: SafeArea(
        child: CustomColumn(
          children: [
            Container(
              
              height: MediaQuery.of(context).size.height * 0.35,
              width: double.infinity,
              color: Colors.grey[300],
              child: Image.network(
              widget.product.images.isNotEmpty
                  ? 'http://172.16.4.105:4000/${widget.product.images.first}'
                  : 'https://via.placeholder.com/150',
              fit: BoxFit.cover,
            )
              // const ClipRRect(
                
              //   borderRadius: BorderRadius.only(
              //     bottomLeft: Radius.circular(20),
              //     bottomRight: Radius.circular(20),
              //   ),
              // ),
            ),
            const Gap(Sizes.p8),
            Expanded(
              child: Container(
                
                padding: const EdgeInsets.all(24.0),
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: AppColors.backGroundSecondary,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Gap(Sizes.p8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                          Text(
                            widget.product.name,
                            style: context.bodyLarge?.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          Text(
                            'Rp ${widget.product.price}',
                            style: context.bodyLarge?.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                      ],
                    ),
                    const Gap(Sizes.p28),
                    SizedBox(
                      height: 160, // Ini akan fix 200 tinggi
                      child: SingleChildScrollView(
                        child: Text(
                          widget.product.description,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 13,
                            height: 1.5,
                          ),
                        ),
                      ),
                    ),
                    const Gap(Sizes.p24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: decrementQuantity,
                          child: Container(
                            width: 30,
                            height: 30,
                            decoration: const BoxDecoration(
                              color: AppColors.primary2,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(25),
                                bottomLeft: Radius.circular(25),
                              ),
                            ),
                            child: const Center(
                              child: Icon(
                                Icons.remove,
                                color: Colors.white,
                                size: 24,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 40,
                          height: 30,
                          color: AppColors.backGroundSecondary,
                          child: Center(
                            child: Text(
                              quantity.toString(),
                              style:
                                  context.bodyMedium?.toWeight(FontWeight.w500),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: incrementQuantity,
                          child: Container(
                            width: 30,
                            height: 30,
                            decoration: const BoxDecoration(
                              color: AppColors.primary2,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(25),
                                bottomRight: Radius.circular(25),
                              ),
                            ),
                            child: const Center(
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 24,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Gap(Sizes.p24),
                    const Spacer(),
                    Center(
                      child: PrimaryButton(
                        text: 'Beli Sekarang',
                        onPressed: () {
                          context.router.push(const BnextProductCoRoute());
                        },
                        width: MediaQuery.of(context).size.width * 0.7,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
