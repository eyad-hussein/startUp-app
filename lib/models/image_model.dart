import 'package:equatable/equatable.dart';

class ImageModel extends Equatable {
  final int id;
  final String url;
  final String alt;

  const ImageModel({required this.id, required this.url, this.alt = "Image"});

  factory ImageModel.fromJson(Map<String, dynamic> json) {
    return ImageModel(
      id: json['id'] as int,
      url: json['url'] as String,
      alt: json['alt'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'url': url,
      'alt': alt,
    };
  }

  @override
  List<Object?> get props => [id, url, alt];
}
