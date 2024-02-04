import 'dart:convert';

import 'package:app/models/user.dart';
import 'package:app/shared/config.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

// TODO :: check for errors explicitly
// TODO :: create a tokenhandler class
class AuthRepository {
  static const String _tokenKey = 'user_token';

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

    if (response.statusCode == 201) {
      final token = _extractToken(response);
      await _storeToken(token);
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
      final token = _extractToken(response);
      await _storeToken(token);
      return User.fromJson(jsonDecode(response.body)['user']);
    } else {
      throw Exception('User login failed: ${response.body}');
    }
  }

  Future<void> logout() async {
    var response = await http.post(
      Uri.parse('$apiUrl/logout'),
      headers: {
        'Accept': 'application/json',
      },
    );

    if (response.statusCode != 204) {
      throw Exception('Failed to logout user');
    }
    await removeToken();
  }

  Future<void> _storeToken(String token) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(_tokenKey, token);
  }

  Future<void> removeToken() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove(_tokenKey);
  }

  Future<String?> getToken() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(_tokenKey);
  }

  String _extractToken(http.Response response) {
    return jsonDecode(response.body)['token'];
  }

  Future<bool> validateToken(String token) async {
    try {
      final response = await http.get(
        Uri.parse('$apiUrl/validate-token'),
        headers: {
          'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode == 200) {
        return true;
      } else {
        await removeToken();
        return false;
      }
    } catch (e) {
      print('Error validating token: $e');
      return false;
    }
  }
}
