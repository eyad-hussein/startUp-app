import 'package:app/models/review.dart';

class Product {
  final String name;
  final double price;
  final String imageUrl;
  final String imageAlt;
  final List<String> subImagesUrl;
  final List<String> sizesAvailable;
  final String description;
  final String shortDescription;
  final String brand;
  final List<Review> reviews;
  bool isFavourite;

  Product({
    required this.name,
    required this.imageUrl,
    this.imageAlt = "Image",
    required this.subImagesUrl,
    required this.price,
    required this.description,
    required this.shortDescription,
    required this.brand,
    required this.sizesAvailable,
    required this.reviews,
    this.isFavourite = false,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    List<String> subImagesUrl = (json['image']['subimages'] as List)
        .map((subimage) {
          int length = subimage.toString().length;
          return subimage.toString().substring(1, length - 1);
        }
        )
    .toList();

    List<String> sizesAvailable = (json['available_sizes'] as List)
        .map((size) => size.toString())
        .toList();

    List<Review> reviews = (json['reviews'] as List)
        .map((review) => Review.fromJson(review))
        .toList();

    return Product(
      name: json['name'] as String,
      imageUrl: json['image']['url'] as String,
      // imageAlt: json['image']['alt'] as String,
      price: (json['price'] as num).toDouble(),
      description: json['description'] as String,
      brand: json['brand']['name'] as String,
      sizesAvailable: sizesAvailable,
      subImagesUrl: subImagesUrl,
      shortDescription: json['short_description'] as String,
      reviews: reviews,
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
