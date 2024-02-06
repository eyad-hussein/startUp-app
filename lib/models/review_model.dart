import 'package:equatable/equatable.dart';

class ReviewModel extends Equatable {
  final int id;
  final int productId;
  final int userId;
  final String content;
  final double rating;

  const ReviewModel({
    required this.id,
    required this.productId,
    required this.userId,
    required this.content,
    required this.rating,
  });

  factory ReviewModel.fromJson(Map<String, dynamic> json) {
    return ReviewModel(
      id: json['id'] as int,
      productId: json['product_id'] as int,
      userId: json['user_id'] as int,
      content: json['content'] as String,
      rating: (json['rating'] as num).toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'product_id': productId,
      'user_id': userId,
      'content': content,
      'rating': rating,
    };
  }

  @override
  List<Object?> get props => [id, productId, userId, content, rating];
}
