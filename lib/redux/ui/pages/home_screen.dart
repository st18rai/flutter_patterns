import 'package:flutter/material.dart';
import 'package:flutter_patterns/redux/model/post.dart';
import 'package:flutter_patterns/redux/redux/actions.dart';
import 'package:flutter_patterns/redux/redux/state.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import 'home_screen_widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void handleInitialBuild(PostsProps props) {
    props.fetchPosts();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          StoreConnector<AppState, PostsProps>(
              converter: (store) => mapStateToProps(store),
              onInitialBuild: (props) => handleInitialBuild(props),
              builder: (_, props) {
                return Flexible(
                  child: ListView.builder(
                    shrinkWrap: true,
                    padding:
                        const EdgeInsets.only(top: 16.0, left: 8.0, right: 8.0),
                    physics: const AlwaysScrollableScrollPhysics(),
                    itemCount: props.postsList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return PostItemWidget(
                        post: props.postsList[index],
                      );
                    },
                  ),
                );
              }),
        ],
      ),
    );
  }
}

class PostsProps {
  final Function fetchPosts;
  final List<Post> postsList;

  PostsProps({
    required this.postsList,
    required this.fetchPosts,
  });
}

PostsProps mapStateToProps(Store<AppState> store) {
  return PostsProps(
    fetchPosts: () => store.dispatch(FetchPostsAction()),
    postsList: store.state.posts,
  );
}
