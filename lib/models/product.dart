class Product {
  final String imageURL;
  final String name;
  final double price;
  bool isFavourite;

  Product({
    required this.imageURL,
    required this.name,
    required this.price,
    this.isFavourite = false,
  });
}
