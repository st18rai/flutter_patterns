import 'package:flutter/material.dart';
import 'package:flutter_patterns/viper/ui/presenter/posts_presenter.dart';
import 'package:provider/provider.dart';
import 'package:flutter_patterns/viper/entity/post.dart';

import 'home_screen_widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Consumer<PostsPresenter>(
        builder: (context, presenter, child) {
          return FutureBuilder<List<Post>>(
            future: presenter.getPosts(),
            builder:
                (BuildContext context, AsyncSnapshot<List<Post>> snapshot) {
              switch (snapshot.connectionState) {
                case ConnectionState.waiting:
                  return const LoadingWidget(
                    color: Colors.deepOrange,
                  );
                default:
                  if (snapshot.hasData) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          child: ListView.builder(
                            shrinkWrap: true,
                            padding: const EdgeInsets.only(
                                top: 16.0, left: 8.0, right: 8.0),
                            physics: const AlwaysScrollableScrollPhysics(),
                            itemCount: snapshot.data?.length,
                            itemBuilder: (BuildContext context, int index) {
                              return PostItemWidget(
                                post: snapshot.data![index],
                              );
                            },
                          ),
                        ),
                      ],
                    );
                  } else {
                    return InfoWidget(text: 'Error: ${snapshot.error}');
                  }
              }
            },
          );
        },
      ),
    );
  }
}
