import 'package:equatable/equatable.dart';

class SizeModel extends Equatable {
  final int id;
  final String size;
  final int productId;

  const SizeModel({
    required this.id,
    required this.size,
    required this.productId,
  });

  factory SizeModel.fromJson(Map<String, dynamic> json) {
    return SizeModel(
      id: json['id'] as int,
      size: json['size'] as String,
      productId: json['product_id'] as int,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'size': size,
      'product_id': productId,
    };
  }

  @override
  List<Object?> get props => [id, size, productId];
}
