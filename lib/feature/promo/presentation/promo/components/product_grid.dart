import 'package:auto_route/auto_route.dart';
import 'package:bnext/config/config.dart';
import 'package:bnext/config/di/setup_injection.dart';
import 'package:bnext/feature/bnext_product/bnext_product/data/models/product_model.dart';
import 'package:bnext/feature/bnext_product/bnext_product/presentation/bnext_product/cubit/product_cubit.dart';
import 'package:bnext/libraries/components/card_widget/product_card_product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BuildProductGrid extends StatelessWidget {
  const BuildProductGrid({
    super.key,
    required this.isDiscounted,
  });

  final bool isDiscounted;

  @override
  Widget build(BuildContext context) {
  return BlocProvider(
    create: (_) => sl<ProductCubit>()..getProducts(),
    child: BlocBuilder<ProductCubit, ProductState>(
      builder: (context, state) {
        if (state is ProductLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is ProductLoaded) {
          final products = state.products;

          return SizedBox(
            height: 250,
            child: GridView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 24),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                childAspectRatio: 1.2,
              ),
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];
                return ProductCardProduct(
                  title: product.name,
                  description: 'Rp ${product.price}',
                  description2: product.description,
                  imageUrl: product.images.isNotEmpty
                      ? 'http://172.16.4.105:4000/${product.images.first}'
                      : 'https://via.placeholder.com/150',
                  onTap: () {
                    context.router.push(
                      BnextProductOrderRoute(
                        product: ProductModel.fromEntity(product),
                      ),
                    );
                  },
                );
              },
            ),
          );
        } else {
          return const Center(
            child: Text(
              'Failed to load products',
            ),
          );
        }
      },
    ),
  );
}
}