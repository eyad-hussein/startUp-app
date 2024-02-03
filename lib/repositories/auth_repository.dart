import 'dart:convert';

import 'package:app/models/user.dart';
import 'package:app/shared/config.dart';
import 'package:http/http.dart' as http;

class AuthRepository {
  Future<User> register(
    String name,
    String email,
    String password,
    String passwordConfirmation,
  ) async {
    final response = await http.post(
      Uri.parse('$apiUrl/register'),
      headers: {
        'Accept': 'application/json',
      },
      body: {
        'name': name,
        'email': email,
        'password': password,
        'password_confirmation': passwordConfirmation,
      },
    );

    print(User.fromJson(jsonDecode(response.body)['user']));

    if (response.statusCode == 201) {
      print("yead");
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
