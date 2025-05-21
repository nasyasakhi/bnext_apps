import '../../domain/entities/product_entity.dart';

//Model hasil dari API, bisa diconvert ke Entity (toEntity()).

class ProductModel extends ProductEntity {
  ProductModel({
    required int ID,
    required String name,
    required String description,
    required String price,
    required String stock,
    required List<String> images,
  }) : super(
          ID: ID,
          name: name,
          description: description,
          price: price,
          stock: stock,
          images: images,
        );

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      ID: json['ID'] ?? 0,
      name: json['name'] ?? '',
      description: json['description'] ?? '',
      price: json['price'] ?? '',
      stock: json['stock'] ?? '',
      images: List<String>.from(json['images'] ?? []),
    );
  }
    // ✅ Tambahkan ini
  factory ProductModel.fromEntity(ProductEntity entity) {
    return ProductModel(
      ID: entity.ID,
      name: entity.name,
      description: entity.description,
      price: entity.price,
      stock: entity.stock,
      images: entity.images,
    );
  }
}

