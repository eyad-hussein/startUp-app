class Product {
  final String name;
  final double price;
  // final List<String> subImagesUrl;
  // final List<String> sizesAvailable;
  final String imageUrl;
  final String imageAlt;
  // final String description;
  bool isFavourite;

  Product({
    required this.name,
    required this.imageUrl,
    this.imageAlt = "Image",
    required this.price,
    // required this.description,
    this.isFavourite = false,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      name: json['name'] as String,
      imageUrl: json['image']['url'] as String,
      imageAlt: json['image']['alt'] as String,
      price:  (json['price'] as num).toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'image': {'url': imageUrl, 'alt': imageAlt},
      'price': price,
    };
  }
}
