import 'package:app/models/brand_model.dart';
import 'package:app/models/review_model.dart';
import 'package:app/models/image_model.dart';
import 'package:app/models/size_model.dart';
import 'package:app/models/sub_image_model.dart';

class Product {
  final int id;
  final String name;
  final double price;
  final ImageModel image;
  final List<SubImageModel> subImages;
  final List<SizeModel> sizesAvailable;
  final String description;
  final String shortDescription;
  final Brand brand;
  final List<ReviewModel> reviews;
  bool isFavourite = false;
  int? quantity;

  Product({
    required this.id,
    required this.name,
    required this.image,
    required this.subImages,
    required this.price,
    required this.description,
    required this.shortDescription,
    required this.brand,
    required this.sizesAvailable,
    required this.reviews,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    List<SubImageModel> subImagesUrl = (json['image']['sub_images'] as List)
        .map((subImage) => SubImageModel.fromJson(subImage))
        .toList();

    List<SizeModel> sizesAvailable = (json['sizes'] as List)
        .map((size) => SizeModel.fromJson(size))
        .toList();

    List<ReviewModel> reviews = (json['reviews'] as List)
        .map((review) => ReviewModel.fromJson(review))
        .toList();

    return Product(
      id: json['id'] as int,
      name: json['name'] as String,
      image: ImageModel.fromJson(json['image']),
      price: (json['price'] as num).toDouble(),
      description: json['description'] as String,
      brand: Brand.fromJson(json['brand']),
      sizesAvailable: sizesAvailable,
      subImages: subImagesUrl,
      shortDescription: json['short_description'] as String,
      reviews: reviews,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'image': image.toJson(),
      'brand': brand.toJson(),
      'reviews': reviews.map((review) => review.toJson()).toList(),
      'sizes': sizesAvailable.map((size) => size.toJson()).toList(),
      'sub_images': subImages.map((subImage) => subImage.toJson()).toList(),
      'description': description,
      'short_description': shortDescription,
      'price': price,
    };
  }
}
