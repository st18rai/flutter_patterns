import 'package:flutter_patterns/bloc/model/post.dart';
import 'package:http/http.dart' as http;

class PostsDs {
  final String _baseUrl = 'https://jsonplaceholder.typicode.com/';

  Future<List<Post>> getPosts() async {
    List<Post> posts = <Post>[];

    final url = Uri.parse('${_baseUrl}posts');

    http.Response res = await http.get(url);

    posts.addAll(postsListFromJson(res.body));

    return posts;
  }
}
