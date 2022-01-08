import 'package:flutter_patterns/mvvm/model/post.dart';
import 'package:flutter_patterns/mvvm/src/posts_ds.dart';
import 'package:pmvvm/pmvvm.dart';

class PostsViewModel extends ViewModel {
  final PostsDs postsDs;
  List<Post> posts = [];

  PostsViewModel({required this.postsDs});

  @override
  void init() {
    super.init();

    getPosts();
  }

  void getPosts() async {
    posts = await postsDs.getPosts();
    notifyListeners();
  }
}
