class Product {
  final String name;
  final double price;
  final List<String> subImagesUrl;
  final List<String> sizesAvailable;
  final String Description;
  bool isFavourite;
  final String imageUrl;
  final String imageAlt;
  final int price;
  bool isFavourite;

  Product({
    required this.name,
    required this.imageUrl,
    this.imageAlt = "Image",
    required this.price,
    required this.Description,
    this.isFavourite = false,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      name: json['name'] as String,
      imageUrl: json['image']['url'] as String,
      imageAlt: json['image']['alt'] as String,
      price: json['price'] as int,
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
