import 'package:bnext/config/di/setup_injection.dart';
import 'package:bnext/feature/bnext_product/bnext_product/presentation/bnext_product/cubit/product_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_route/auto_route.dart';
import '../../../../../core/core.dart';
import '../../../../../libraries/libraries.dart';
import '../../../../../config/router/app_router.dart';
import '../../../../../libraries/components/card_widget/product_card.dart';

import '../../../../../config/di/injection.dart';

@RoutePage()
class BnextProductPage extends StatelessWidget {
  const BnextProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<ProductCubit>()..getProducts(),
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
                    return ProductCard(
                      title: product.name,
                      description: 'Rp ${product.price}',
                      description2: product.description,
                      onTap: () {
                        context.router.push(const BnextProductOrderRoute());
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
