import '../entities/product_entity.dart';
//Interface / kontrak. Tanpa implementasi.


// product_repository.dart
abstract class ProductRepository {
  Future<List<ProductEntity>> getProducts();
  Future<List<ProductEntity>> getProductsByCategory(String categoryName); // Tambahan
}
