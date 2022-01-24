import 'package:flutter_patterns/redux/model/post.dart';

class FetchPostsAction {}

class FetchPostsActionSuccess {
  final List<Post> posts;

  FetchPostsActionSuccess(this.posts);
}

class FetchPostsActionError {
  final String error;

  FetchPostsActionError(this.error);
}
