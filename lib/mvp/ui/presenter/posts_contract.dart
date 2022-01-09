import 'package:flutter_patterns/mvp/model/post.dart';

abstract class PostContract {
  void showLoading(bool isLoading);
  void showPosts(List<Post> posts);
  void showError(String error);
}
