import 'package:flutter_patterns/bloc/model/post.dart';

abstract class PostState {}

class InitState extends PostState {}

class LoadingState extends PostState {}

class LoadedState extends PostState {
  final List<Post> posts;

  LoadedState(this.posts);
}

class ErrorState extends PostState {}
