import 'package:equatable/equatable.dart';

class SubImageModel extends Equatable {
  final int id;
  final String url;

  const SubImageModel({required this.id, required this.url});

  factory SubImageModel.fromJson(Map<String, dynamic> json) {
    return SubImageModel(
      id: json['id'] as int,
      url: json['url'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'url': url,
    };
  }

  @override
  List<Object?> get props => [id, url];
}
