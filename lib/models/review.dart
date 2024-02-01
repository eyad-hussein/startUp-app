class Review {
  final String content;
  final int rating;

  Review({
    required this.content,
    required this.rating,
  });

  factory Review.fromJson(Map<String, dynamic> json) {
    return Review(
      content: json['content'] as String,
      rating: json['rating'] as int,
    );
  }
}
