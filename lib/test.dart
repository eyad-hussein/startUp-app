import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Test extends StatelessWidget {
  const Test({super.key});

  Future<void> _register() async {
    final response = await http.post(
      Uri.parse('http://127.0.0.1:8000/api/register'),
      headers: {
        'Accept': 'application/json',
      },
      body: {
        'name': "eyad",
        'email': "eadojoer@gmail.com",
        'password': "1234",
        'password_confirmation': "1234",
      },
    );
    print(response.body);
  }

  Future<void> _login() async {
    final response = await http.post(
      Uri.parse('http://127.0.0.1:8000/api/login'),
      body: {
        // 'name': "eyad",
        'email': "eadojoker@gmail.com",
        'password': "hesham1234",
        // 'confirmPassword': confirmPassword,
      },
    );
    print(response.body);
  }

  @override
  Widget build(BuildContext context) {
    // _login();
    _register();
    return const Scaffold(
      body: Center(
        child: Text("Hello World"),
      ),
    );
  }
}
