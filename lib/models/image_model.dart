import 'package:equatable/equatable.dart';

class ImageModel extends Equatable {
  final String id;
  final String url;
  final String alt;

  const ImageModel({required this.id, required this.url, this.alt = "Image"});

  factory ImageModel.fromJson(Map<String, dynamic> json) {
    return ImageModel(
      id: json['id'],
      url: json['url'],
      alt: json['alt'],
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
