import 'package:equatable/equatable.dart';

class SubImageModel extends Equatable {
  final String id;
  final String url;
  final String alt;

  const SubImageModel(
      {required this.id, required this.url, this.alt = "Image"});

  factory SubImageModel.fromJson(Map<String, dynamic> json) {
    return SubImageModel(
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
