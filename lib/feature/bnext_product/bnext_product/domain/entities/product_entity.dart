//Class inti, bentuk data yang dipakai di seluruh aplikasi.


class ProductEntity {
  final int ID;
  final String name;
  final String description;
  final String price;
  final String stock;
  final List<String> images;

  ProductEntity({
    required this.ID,
    required this.name,
    required this.description,
    required this.price,
    required this.stock,
    required this.images,
  });
}
