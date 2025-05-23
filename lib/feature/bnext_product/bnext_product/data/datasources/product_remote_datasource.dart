import 'package:dio/dio.dart';
import '../models/product_model.dart';

abstract class ProductRemoteDatasource {
  Future<List<ProductModel>> fetchProducts();
  Future<List<ProductModel>> fetchProductsByCategory(String categoryName); // Tambahan
}

class ProductRemoteDatasourceImpl implements ProductRemoteDatasource {
  final Dio dio;

  ProductRemoteDatasourceImpl(this.dio);

  @override
  Future<List<ProductModel>> fetchProducts() async {
    final response = await dio.get('http://172.16.4.105:4000/products');
    final data = response.data as List;
    return data.map((e) => ProductModel.fromJson(e)).toList();
  }

  Future<List<ProductModel>> fetchProductsByCategory(String categoryName) async {
  final stopwatch = Stopwatch()..start();
  final response = await dio.get('http://172.16.4.105:4000/products');
  print('API call duration: ${stopwatch.elapsedMilliseconds} ms');

  if (response.statusCode == 200) {
    final List<dynamic> allProducts = response.data;
    final filtered = allProducts.where((product) {
      final name = product['category']?['name'] ?? '';
      return name == categoryName;
    }).map((json) => ProductModel.fromJson(json)).toList();

    print('Filtered products count: ${filtered.length}');
    return filtered;
  } else {
    throw Exception('Failed to load products');
  }
}

}
