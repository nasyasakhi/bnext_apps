import '../../domain/entities/product_entity.dart';

// Model hasil dari API, bisa diconvert ke Entity (toEntity()).
class ProductModel {
  final int ID;
  final String name;
  final String description;
  final String price;
  final String stock;
  final List<String> images;
  final String? category;

  ProductModel({
    required this.ID,
    required this.name,
    required this.description,
    required this.price,
    required this.stock,
    required this.images,
    this.category,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      ID: json['ID'] ?? 0,
      name: json['name'] ?? '',
      description: json['description'] ?? '',
      price: json['price'] ?? '',
      stock: json['stock'] ?? '',
      images: List<String>.from(json['images'] ?? []),
      category: json['category']?['name'],
    );
  }

  factory ProductModel.fromEntity(ProductEntity entity) {
    return ProductModel(
      ID: entity.ID,
      name: entity.name,
      description: entity.description,
      price: entity.price,
      stock: entity.stock,
      images: entity.images,
      category: entity.category,
    );
  }

  ProductEntity toEntity() {
    return ProductEntity(
      ID: ID,
      name: name,
      description: description,
      price: price,
      stock: stock,
      images: images,
      category: category,
    );
  }
}
