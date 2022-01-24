import 'package:flutter_patterns/redux/redux/actions.dart';
import 'package:flutter_patterns/redux/redux/state.dart';

AppState reducer(AppState prev, dynamic action) {
  if (action is FetchPostsActionSuccess) {
    return AppState(action.posts);
  } else {
    return prev;
  }
}
