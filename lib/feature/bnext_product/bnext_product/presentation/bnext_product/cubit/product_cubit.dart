import 'package:bnext/feature/bnext_product/bnext_product/domain/entities/product_entity.dart';
import 'package:bnext/feature/bnext_product/bnext_product/domain/usecases/get_products_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


part 'product_state.dart';

//BLoC/Cubit yang urus state dari UI.


class ProductCubit extends Cubit<ProductState> {
  final GetProductsUseCase useCase;

  ProductCubit(this.useCase) : super(ProductInitial());

  Future<void> getProducts() async {
    emit(ProductLoading());
    try {
      final products = await useCase();
      emit(ProductLoaded(products));
    } catch (e) {
      emit(ProductError('Gagal mengambil produk'));
    }
  }
}
