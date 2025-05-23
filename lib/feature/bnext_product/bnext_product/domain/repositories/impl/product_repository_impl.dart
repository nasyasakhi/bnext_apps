import 'package:bnext/feature/bnext_product/bnext_product/data/datasources/product_remote_datasource.dart';
import 'package:bnext/feature/bnext_product/bnext_product/domain/entities/product_entity.dart';
import 'package:bnext/feature/bnext_product/bnext_product/domain/repositories/product_repository.dart';

class ProductRepositoryImpl implements ProductRepository {
  final ProductRemoteDatasource remoteDatasource;

  ProductRepositoryImpl(this.remoteDatasource);

  @override
  Future<List<ProductEntity>> getProducts() async {
    final models = await remoteDatasource.fetchProducts();
    return models.map((model) => model.toEntity()).toList();
  }

  @override
  Future<List<ProductEntity>> getProductsByCategory(String categoryName) async {
    final models = await remoteDatasource.fetchProductsByCategory(categoryName);
    return models.map((model) => model.toEntity()).toList();
  }
}
