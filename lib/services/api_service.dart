import 'dart:convert';

import 'package:flutter/rendering.dart';
import 'package:insta_clone/models/post_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static const String baseUrl = 'http://192.168.0.14:8011/api';

  static Future<List<PostModel>> fetchPosts() async {
    final response = await http.get(Uri.parse('$baseUrl/post/all'));

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);

      debugPrint(response.body);

      return data.map((json) => PostModel.fromJson(json)).toList();
    }

    throw Exception('Failed to load posts');
  }
}
