import 'package:flutter/material.dart';
import 'package:mvvm_architecture/model/post_model.dart';
import 'package:mvvm_architecture/viewmodel/post_view_model.dart';
import 'package:provider/provider.dart';

class PostListView extends StatelessWidget {
  const PostListView({super.key});

  @override
  Widget build(BuildContext context) {
    final postViewModel = Provider.of<PostViewModel>(context);
    return Scaffold(
      appBar: AppBar(title: Text('Posts List')),
      body:
          postViewModel.loading
              ? Center(child: CircularProgressIndicator())
              : ListView.builder(
                itemCount: postViewModel.post.length,
                itemBuilder: (context, index) {
                  final post = postViewModel.post[index];
                  return ListTile(
                    title: Text(
                      post.title,
                      style: TextStyle(color: Colors.black),
                    ),
                    subtitle: Text(post.body),
                  );
                },
              ),
      floatingActionButton: FloatingActionButton(
        onPressed: postViewModel.fetchPost,
        child: Icon(Icons.refresh),
      ),
    );
  }
}
