import 'dart:convert';

import 'package:app/models/user_model.dart';
import 'package:app/shared/config.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

// TODO :: check for errors explicitly
// TODO :: create a tokenhandler class

class AuthService extends GetxService {
  static const String _tokenKey = 'user_token';

  Future<UserModel> register(
    String name,
    String email,
    String password,
    String passwordConfirmation,
  ) async {
    try {
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

      if (response.statusCode != 201) {
        throw Exception('Failed to register user');
      }

      final token = _extractToken(response);
      await _storeToken(token);
      return UserModel.fromJson(jsonDecode(response.body)['user']);
    } catch (e) {
      throw Exception('Server Error: $e');
    }
  }

  Future<UserModel> login(String email, String password) async {
    try {
      var response = await http.post(
        Uri.parse('$apiUrl/login'),
        body: {
          'email': email,
          'password': password,
        },
      );

      if (response.statusCode != 200) {
        throw Exception('Failed to login user');
      }

      final token = _extractToken(response);
      await _storeToken(token);
      return UserModel.fromJson(jsonDecode(response.body)['user']);
    } catch (e) {
      throw Exception('Server Error: $e');
    }
  }

  Future<void> logout() async {
    try {
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
    } catch (e) {
      throw Exception('Server Error: $e');
    }
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

      if (response.statusCode != 200) {
        await removeToken();
        return false;
      }

      return true;
    } catch (e) {
      throw Exception('Failed to validate token');
    }
  }
}
