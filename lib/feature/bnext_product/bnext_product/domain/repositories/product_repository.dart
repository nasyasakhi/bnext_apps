import '../entities/product_entity.dart';
//Interface / kontrak. Tanpa implementasi.

abstract class ProductRepository {
  Future<List<ProductEntity>> getProducts();
}
