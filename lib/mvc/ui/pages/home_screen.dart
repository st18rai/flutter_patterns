import 'package:flutter/material.dart';
import 'package:flutter_patterns/mvc/ui/controller/posts_controller.dart';
import 'package:mvc_pattern/mvc_pattern.dart';
import 'home_screen_widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends StateMVC {
  late PostsController _controller;

  _HomeScreenState() : super(PostsController()) {
    _controller = PostsController();
  }

  @override
  void initState() {
    super.initState();

    _controller.getPosts();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: ListView.builder(
              shrinkWrap: true,
              padding: const EdgeInsets.only(top: 16.0, left: 8.0, right: 8.0),
              physics: const AlwaysScrollableScrollPhysics(),
              itemCount: _controller.posts.length,
              itemBuilder: (BuildContext context, int index) {
                return PostItemWidget(
                  post: _controller.posts[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
