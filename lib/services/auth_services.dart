import 'dart:convert';
import 'package:http/http.dart' as http;

Future<String> iniciarSession(String email, String password) async {
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
      return response.body;
    } else if (response.statusCode == 403) {
      return response.body;
    } else {
      return 'Error en el servidor';
    }
  } catch (e) {
    return e.toString();
  }
}
