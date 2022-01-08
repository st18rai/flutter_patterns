import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_patterns/bloc/src/posts_ds.dart';
import 'package:flutter_patterns/bloc/ui/bloc/states.dart';

import 'events.dart';

class PostsBloc extends Bloc<PostEvent, PostState> {
  final PostsDs postsDs;

  PostsBloc({required this.postsDs}) : super(InitState());

  @override
  Stream<PostState> mapEventToState(PostEvent event) async* {
    if (event is GetPostsEvent) {
      yield LoadingState();

      try {
        var posts = await postsDs.getPosts();

        yield LoadedState(posts);

        return;
      } catch (ex) {
        yield ErrorState();
      }
    }
  }
}
