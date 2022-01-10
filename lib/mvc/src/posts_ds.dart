import 'package:flutter_patterns/mvc/model/post.dart';
import 'package:http/http.dart' as http;

class PostsDs {
  final String _baseUrl = 'https://jsonplaceholder.typicode.com/';

  Future<List<Post>> getPosts() async {
    List<Post> posts = <Post>[];

    final url = Uri.parse('${_baseUrl}posts');

    http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      posts.addAll(postsListFromJson(response.body));
      return posts;
    } else {
      throw Exception("Unable to perform request!");
    }
  }
}
