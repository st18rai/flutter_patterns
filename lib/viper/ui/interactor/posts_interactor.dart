import 'package:flutter_patterns/viper/src/posts_ds.dart';
import 'package:flutter_patterns/viper/entity/post.dart';

class PostsInteractor {
  final PostsDs postsDs = PostsDs();

  Future<List<Post>> getPosts() async {
    List<Post> posts = [];
    try {
      posts = await postsDs.getPosts();
    } catch (e) {
      print('Cant fetch posts: $e');
    }

    return posts;
  }
}
