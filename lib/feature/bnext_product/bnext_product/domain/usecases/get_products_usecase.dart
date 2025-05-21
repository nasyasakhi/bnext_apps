
import 'package:bnext/feature/bnext_product/bnext_product/domain/entities/product_entity.dart';
import 'package:bnext/feature/bnext_product/bnext_product/domain/repositories/product_repository.dart';

//Logic aplikasi tingkat menengah. Biasanya cuma panggil repository.


class GetProductsUseCase {
  final ProductRepository repository;

  GetProductsUseCase(this.repository);

  Future<List<ProductEntity>> call() {
    return repository.getProducts();
  }
}
