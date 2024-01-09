class Product {
  final String imageURL;
  final String name;
  final double price;
  final List<String> subImagesUrl;
  final List<String> sizesAvailable;
  final String Description;
  bool isFavourite;

  Product({
    required this.sizesAvailable,
    required this.subImagesUrl,
    required this.imageURL,
    required this.name,
    required this.price,
    required this.Description,
    this.isFavourite = false,
  });
}
