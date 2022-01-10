import 'package:flutter_patterns/mvc/model/post.dart';
import 'package:flutter_patterns/mvc/src/posts_ds.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

class PostsController extends ControllerMVC {
  late PostsDs postsDs;
  List<Post> posts = [];

  static final PostsController _controller = PostsController._internal();

  factory PostsController() {
    _controller.postsDs = PostsDs();
    return _controller;
  }

  PostsController._internal();

  void getPosts() async {
    posts = await postsDs.getPosts();
    setState(() {});
  }
}
