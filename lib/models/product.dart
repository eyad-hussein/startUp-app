class Product {
  final String name;
  final String imageUrl;
  final String imageAlt;
  final int price;
  bool isFavourite;

  Product({
    required this.name,
    required this.imageUrl,
    this.imageAlt = "Image",
    required this.price,
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
