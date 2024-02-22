import 'package:app/models/image_model.dart';
import 'package:equatable/equatable.dart';

class BrandModel extends Equatable {
  final int id;
  final String name;
  final String address;
  final ImageModel image;

  const BrandModel({
    required this.name,
    required this.image,
    required this.id,
    required this.address,
  });

  factory BrandModel.fromJson(Map<String, dynamic> json) {
    return BrandModel(
      id: json['id'] as int,
      name: json['name'] as String,
      address: json['address'] as String,
      image: ImageModel.fromJson(json['image']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'address': address,
      'image': image.toJson(),
    };
  }

  @override
  List<Object?> get props => [id, name, address];
}
