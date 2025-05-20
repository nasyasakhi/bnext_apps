import '../../domain/entities/product_entity.dart';

class ProductModel extends ProductEntity {
  ProductModel({
    required int id,
    required String name,
    required String description,
    required String price,
    required String stock,
    required List<String> images,
  }) : super(
          id: id,
          name: name,
          description: description,
          price: price,
          stock: stock,
          images: images,
        );

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['ID'] ?? 0,
      name: json['name'] ?? '',
      description: json['description'] ?? '',
      price: json['price'] ?? '',
      stock: json['stock'] ?? '',
      images: List<String>.from(json['images'] ?? []),
    );
  }
}
