import 'dart:convert';
import 'package:http/http.dart' as http;

Future<bool> iniciarSession(String email, String password) async {
  final String URL = 'http://localhost:5095/Usuarios';

  final Map<String, dynamic> body = {
    'email': email,
    'password': password,
  };

  try {
    final response = await http.post(
      Uri.parse(URL),
      body: jsonEncode(body),
      headers: {
        'Content-Type': 'application/json',
      },
      
    );
    if (response.statusCode == 200) {
      return true;
    } else if (response.statusCode == 403) {
      return false;
    } else {
      return false;
    }
  } catch (e) {
    return false;
  }
}
