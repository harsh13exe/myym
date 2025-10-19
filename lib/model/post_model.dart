import 'package:flutter/foundation.dart';

class PostModel {
  final int id;
  final String title;
  final String body;
  PostModel({required this.id, required this.body, required this.title});

  factory PostModel.fromJson(Map<String, dynamic> json) {
    return PostModel(id: json['id'], body: json['body'], title: json['title']);
  }
}
