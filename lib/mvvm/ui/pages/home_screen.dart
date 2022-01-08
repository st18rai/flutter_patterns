import 'package:flutter/material.dart';
import 'package:flutter_patterns/mvvm/src/posts_ds.dart';
import 'package:flutter_patterns/mvvm/ui/view_model/view_model.dart';
import 'package:pmvvm/pmvvm.dart';

import 'home_screen_widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MVVM(
      view: (context, viewModel) => _HomeScreenView(),
      viewModel: PostsViewModel(postsDs: PostsDs()),
    );
  }
}

class _HomeScreenView extends StatelessView<PostsViewModel> {
  @override
  Widget render(context, viewModel) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: ListView.builder(
              shrinkWrap: true,
              padding: const EdgeInsets.only(top: 16.0, left: 8.0, right: 8.0),
              physics: const AlwaysScrollableScrollPhysics(),
              itemCount: viewModel.posts.length,
              itemBuilder: (BuildContext context, int index) {
                return PostItemWidget(
                  post: viewModel.posts[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
