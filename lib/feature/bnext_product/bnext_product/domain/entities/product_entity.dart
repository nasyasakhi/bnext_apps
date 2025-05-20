class ProductEntity {
  final int id;
  final String name;
  final String description;
  final String price;
  final String stock;
  final List<String> images;

  ProductEntity({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.stock,
    required this.images,
  });
}
