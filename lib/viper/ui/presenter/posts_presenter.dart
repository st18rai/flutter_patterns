import 'package:flutter/material.dart';
import 'package:flutter_patterns/viper/ui/interactor/posts_interactor.dart';
import 'package:flutter_patterns/viper/entity/post.dart';

class PostsPresenter with ChangeNotifier {
  PostsInteractor postsInteractor;

  PostsPresenter({required this.postsInteractor});

  Future<List<Post>> getPosts() async {
    return postsInteractor.getPosts();
  }
}
