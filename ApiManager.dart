import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl;

  ApiService(this.baseUrl);

  // Generic GET request
  Future<T> getRequest<T>(String endpoint, T Function(dynamic) fromJson) async {
    final url = Uri.parse('$baseUrl$endpoint');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      return fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load data');
    }
  }

  // Generic POST request
  Future<T> postRequest<T>(String endpoint, Map<String, dynamic> body,
      T Function(dynamic) fromJson) async {
    final url = Uri.parse('$baseUrl$endpoint');
    final response = await http.post(
      url,
      headers: {
        HttpHeaders.contentTypeHeader: 'application/json',
      },
      body: json.encode(body),
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      return fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to post data');
    }
  }

  // POST request to upload file with additional parameters
  Future<T> postWithFile<T>({
    required String endpoint,
    required File file,
    required T Function(dynamic) fromJson,
    String? fieldName = 'file',
    Map<String, String>? fields, // Additional form fields
  }) async {
    final url = Uri.parse('$baseUrl$endpoint');
    final request = http.MultipartRequest('POST', url)
      ..files.add(await http.MultipartFile.fromPath(fieldName!, file.path));

    // Add additional fields if provided
    if (fields != null) {
      request.fields.addAll(fields);
    }

    final streamedResponse = await request.send();
    final response = await http.Response.fromStream(streamedResponse);

    if (response.statusCode == 200 || response.statusCode == 201) {
      return fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to upload file');
    }
  }
}
