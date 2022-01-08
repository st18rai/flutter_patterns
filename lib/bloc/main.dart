import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_patterns/bloc/src/posts_ds.dart';
import 'package:flutter_patterns/bloc/ui/bloc/bloc.dart';
import 'package:flutter_patterns/bloc/ui/pages/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  final PostsBloc bloc = PostsBloc(postsDs: PostsDs());
  final HomeScreenData screenData = HomeScreenData();

  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter BLoC'),
        ),
        body: BlocProvider<PostsBloc>(
          create: (context) => widget.bloc,
          child: HomeScreen(
            bloc: widget.bloc,
            screenData: widget.screenData,
          ),
        ),
      ),
    );
  }
}
