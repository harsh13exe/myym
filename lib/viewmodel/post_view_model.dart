import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:mvvm_architecture/model/post_model.dart';

class PostViewModel extends ChangeNotifier {
  List<PostModel> _post = [];
  bool _loading = false;

  List<PostModel> get post => _post;
  bool get loading => _loading;

  Future<void> fetchPost() async {
    _loading = true;
    notifyListeners();
    try {
      final response = await http.get(
        Uri.parse('https://jsonplaceholder.typicode.com/posts'),
      );
      if (response.statusCode == 200) {
        List<PostModel> fetchedPosts =
            (json.decode(response.body) as List)
                .map((post) => PostModel.fromJson(post))
                .toList();
        _post = fetchedPosts;
      }
    } catch (e) {
      throw Exception('Failed to load data');
    } finally {
      _loading = false;
      notifyListeners();
    }
  }
}
