import 'package:flutter_patterns/redux/model/post.dart';

class AppState {
  final List<Post> posts;
  final String error;

  AppState(this.posts, {this.error = ''});

  AppState.initialState()
      : posts = [],
        error = '';
}
