import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:app/models/user.dart';

class UserRepository {
  final String apiUrl = 'http://127.0.0.1:8000/api';

  Future<User> register(String name, String email, String password,
      String passwordConfirmation) async {
    final response = await http.post(
      Uri.parse('$apiUrl/register'),
      body: {
        'name': name,
        'email': email,
        'password': password,
        'password_confirmation': passwordConfirmation,
      },
    );

    if (response.statusCode == 201) {
      return User.fromJson(jsonDecode(response.body)['user']);
    } else {
      throw Exception('Failed to register user');
    }
  }

  Future<User> login(String email, String password) async {
    var response = await http.post(
      Uri.parse('$apiUrl/login'),
      body: {
        'email': email,
        'password': password,
      },
    );

    if (response.statusCode == 200) {
      return User.fromJson(jsonDecode(response.body)['user']);
    } else {
      throw Exception('User login failed: ${response.body}');
    }
  }
}
