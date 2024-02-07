import 'package:app/models/user_model.dart';
import 'package:equatable/equatable.dart';

class ReviewModel extends Equatable {
  final int id;
  final int productId;
  final UserModel user;
  final String content;
  final double rating;

  const ReviewModel({
    required this.id,
    required this.productId,
    required this.user,
    required this.content,
    required this.rating,
  });

  factory ReviewModel.fromJson(Map<String, dynamic> json) {
    return ReviewModel(
      id: json['id'] as int,
      productId: json['product_id'] as int,
      user: UserModel.fromJson(json['user']),
      content: json['content'] as String,
      rating: (json['rating'] as num).toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'product_id': productId,
      'user': user.toJson(),
      'content': content,
      'rating': rating,
    };
  }

  @override
  List<Object?> get props => [id, productId, user, content, rating];
}
