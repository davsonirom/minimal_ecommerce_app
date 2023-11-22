class ProductModel {
  final String name;
  final double price;
  final String description;
  String? imagePath;
  ProductModel({
    required this.name,
    required this.price,
    required this.description,
    this.imagePath,
  });
}
