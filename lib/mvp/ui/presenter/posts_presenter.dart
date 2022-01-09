import 'package:flutter_patterns/mvp/src/posts_ds.dart';
import 'package:flutter_patterns/mvp/ui/presenter/posts_contract.dart';

class PostsPresenter {
  final PostsDs postsDs;
  final PostContract view;

  PostsPresenter({
    required this.postsDs,
    required this.view,
  });

  void getPosts() async {
    view.showLoading(true);

    try {
      final posts = await postsDs.getPosts();

      view.showPosts(posts);
    } catch (e) {
      view.showError(e.toString());
    }

    view.showLoading(false);
  }
}
