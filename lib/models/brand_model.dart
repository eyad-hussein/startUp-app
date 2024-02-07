import 'package:app/models/image_model.dart';
import 'package:equatable/equatable.dart';

class Brand extends Equatable {
  final int id;
  final String name;
  final String address;
  // final ImageModel icon;

  const Brand({
    required this.name,
    // required this.icon,
    required this.id,
    required this.address,
  });

  factory Brand.fromJson(Map<String, dynamic> json) {
    return Brand(
      id: json['id'] as int,
      name: json['name'] as String,
      address: json['address'] as String,
      // icon: ImageModel.fromJson(json['icon']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'address': address,
      // 'icon': icon.toJson(),
    };
  }

  @override
  List<Object?> get props => [id, name, address];
}
