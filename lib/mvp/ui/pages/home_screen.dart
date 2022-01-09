import 'package:flutter/material.dart';
import 'package:flutter_patterns/mvp/model/post.dart';
import 'package:flutter_patterns/mvp/src/posts_ds.dart';
import 'package:flutter_patterns/mvp/ui/presenter/posts_contract.dart';
import 'package:flutter_patterns/mvp/ui/presenter/posts_presenter.dart';

import 'home_screen_widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> implements PostContract {
  late PostsPresenter presenter;
  List<Post> posts = [];
  bool isLoading = false;
  String error = '';

  _HomeScreenState() {
    presenter = PostsPresenter(postsDs: PostsDs(), view: this);
  }

  @override
  void initState() {
    super.initState();

    presenter.getPosts();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (error.isNotEmpty) ...{
            InfoWidget(
              text: error,
            ),
          } else if (isLoading) ...{
            const LoadingWidget(color: Colors.lightGreen),
          } else ...{
            Flexible(
              child: ListView.builder(
                shrinkWrap: true,
                padding:
                    const EdgeInsets.only(top: 16.0, left: 8.0, right: 8.0),
                physics: const AlwaysScrollableScrollPhysics(),
                itemCount: posts.length,
                itemBuilder: (BuildContext context, int index) {
                  return PostItemWidget(
                    post: posts[index],
                  );
                },
              ),
            ),
          }
        ],
      ),
    );
  }

  @override
  void showError(String error) {
    setState(() {
      this.error = error;
    });
  }

  @override
  void showLoading(bool isLoading) {
    setState(() {
      this.isLoading = isLoading;
    });
  }

  @override
  void showPosts(List<Post> posts) {
    setState(() {
      this.posts.addAll(posts);
      error = '';
    });
  }
}
