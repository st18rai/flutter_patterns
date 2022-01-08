import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_patterns/bloc/model/post.dart';
import 'package:flutter_patterns/bloc/ui/bloc/bloc.dart';
import 'package:flutter_patterns/bloc/ui/bloc/events.dart';
import 'package:flutter_patterns/bloc/ui/bloc/states.dart';
import 'package:flutter_patterns/bloc/ui/pages/home_screen_widgets.dart';

class HomeScreen extends StatefulWidget {
  final PostsBloc bloc;
  final HomeScreenData screenData;

  const HomeScreen({
    Key? key,
    required this.bloc,
    required this.screenData,
  }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();

    widget.bloc.add(GetPostsEvent());
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<PostsBloc, PostState>(
      listener: (context, dynamic state) {
        if (state is LoadedState) {
          widget.screenData.posts.addAll(state.posts);
          // print('HOME: ${state.posts}');
        }
      },
      child: BlocBuilder<PostsBloc, PostState>(
        builder: (context, state) {
          if (state is LoadingState) {
            return const LoadingWidget(color: Colors.lightGreen);
          }

          if (state is ErrorState) {
            return const InfoWidget(text: 'ERROR');
          }

          return SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: ListView.builder(
                    shrinkWrap: true,
                    padding:
                        const EdgeInsets.only(top: 16.0, left: 8.0, right: 8.0),
                    physics: const AlwaysScrollableScrollPhysics(),
                    itemCount: widget.screenData.posts.length,
                    itemBuilder: (BuildContext context, int index) {
                      return PostItemWidget(
                        post: widget.screenData.posts[index],
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class HomeScreenData {
  List<Post> posts = <Post>[];
}
