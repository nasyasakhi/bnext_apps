import 'package:auto_route/auto_route.dart';
import 'package:bnext/config/di/setup_injection.dart';
import 'package:bnext/feature/bnext_product/bnext_product/data/models/product_model.dart';
import 'package:bnext/feature/bnext_product/bnext_product/presentation/bnext_product/cubit/product_cubit.dart';
import 'package:bnext/libraries/components/card_widget/product_card_product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../config/router/app_router.dart';
import '../../../../../libraries/libraries.dart';

@RoutePage()
class BnextProductPage extends StatelessWidget {
  const BnextProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<ProductCubit>()..getProductsByCategory("bnext-product"),

      child: CustomScaffold(
        appBar: const PrimaryAppBar(
          enableBackButton: true,
          title: 'Bnext Product',
        ),
        body: BlocBuilder<ProductCubit, ProductState>(
          builder: (context, state) {
            if (state is ProductLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is ProductLoaded) {
              final products = state.products;
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: GridView.count(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  childAspectRatio: 0.8,
                  children: products.map((product) {
                     String trimmedDescription = product.description.length > 15
                        ? '${product.description.substring(0, 15)}...'
                        : product.description;
                     String trimmednNme = product.name.length > 15
                        ? '${product.name.substring(0, 15)}...'
                        : product.name;
                    return ProductCardProduct(
                    title: trimmednNme,
                    description: 'Rp ${product.price}',
                    description2: trimmedDescription,
                    imageUrl: product.images.isNotEmpty
                        ? 'http://172.16.4.105:4000/${product.images.first}'
                        : 'https://via.placeholder.com/150', // fallback
                    onTap: () {
                      context.router.push(
                        BnextProductOrderRoute(product: ProductModel.fromEntity(product))

                      );
                    },

                  );

                  }).toList(),
                ),
              );
            } else if (state is ProductError) {
              return Center(child: Text(state.message));
            }
            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}