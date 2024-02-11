import 'package:equatable/equatable.dart';

enum SizeType { s, m, l, xl, xxl }

class SizeModel extends Equatable {
  final int id;
  final String size;

  const SizeModel({
    required this.id,
    required this.size,
  });

  factory SizeModel.fromJson(Map<String, dynamic> json) {
    return SizeModel(
      id: json['id'] as int,
      size: json['size'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'size': size,
    };
  }

  @override
  List<Object?> get props => [id, size];
}
