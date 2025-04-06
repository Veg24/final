import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiService {
  static const String baseUrl = 'https://your-api.com';

  Future<void> submitShippingForm(ShippingFormModel form) async {
    try {
      final response = await http.post(
        Uri.parse('$baseUrl/shipping'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(form.toJson()),
      );

      if (response.statusCode != 200) {
        throw Exception('Failed to submit form');
      }
    } catch (e) {
      rethrow;
    }
  }
} 