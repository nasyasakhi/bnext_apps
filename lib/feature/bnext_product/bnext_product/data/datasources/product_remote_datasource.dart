import 'package:dio/dio.dart';
import '../models/product_model.dart';


//ini isinya logic ambil data ke api
abstract class ProductRemoteDatasource {
  Future<List<ProductModel>> fetchProducts();
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
}
