import 'package:http/http.dart' as http;
import 'dart:convert';
import '../model/user.dart';

class visionGrammarApiService {
  static const String _baseUrl = "https://vision-427210.as.r.appspot.com";

  Future<User> createUser(User user) async {
    final response = await http.post(
      Uri.parse(_baseUrl),
      headers: {'Content-Type': 'application/json'},
      body: json.encode(user.toJson()),
    );
    if (response.statusCode == 201) {
      return User.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to create user');
    }
  }
}
