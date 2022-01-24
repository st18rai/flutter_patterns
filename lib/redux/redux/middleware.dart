import 'package:flutter_patterns/redux/model/post.dart';
import 'package:flutter_patterns/redux/redux/actions.dart';
import 'package:flutter_patterns/redux/redux/state.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

Epic<AppState> fetchPostsEpic() =>
    (Stream<dynamic> actions, EpicStore<AppState> store) {
      return actions
          .whereType<FetchPostsAction>()
          .switchMap((action) => _fetchPosts());
    };

Stream<dynamic> _fetchPosts() async* {
  const String _baseUrl = 'https://jsonplaceholder.typicode.com/';

  List<Post> posts = [];

  try {
    final url = Uri.parse('${_baseUrl}posts');

    http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      posts.addAll(postsListFromJson(response.body));
      yield (FetchPostsActionSuccess(posts));
    }
  } catch (e) {
    yield (FetchPostsActionError(e.toString()));
  }
}
