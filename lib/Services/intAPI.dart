import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = 'http://tomnaia.runasp.net/api/User';

  Future<Map<String, dynamic>> getCurrentUser() async {
    final response = await http.get(Uri.parse('$baseUrl/get-Current-user'));
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load current user');
    }
  }

  Future<Map<String, dynamic>> getUserById(String id) async {
    final response = await http.get(Uri.parse('$baseUrl/get-by-id?id=$id'));
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load user by id');
    }
  }

  Future<String> getUserPicture(String id) async {
    final response = await http.get(Uri.parse('$baseUrl/get-picture?id=$id'));
    if (response.statusCode == 200) {
      return response.body;
    } else {
      throw Exception('Failed to load user picture');
    }
  }
}