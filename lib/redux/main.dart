import 'package:flutter/material.dart';
import 'package:flutter_patterns/redux/redux/middleware.dart';
import 'package:flutter_patterns/redux/redux/reducer.dart';
import 'package:flutter_patterns/redux/redux/state.dart';
import 'package:flutter_patterns/redux/ui/pages/home_screen.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final store = Store<AppState>(reducer,
      initialState: AppState.initialState(),
      middleware: [EpicMiddleware(fetchPostsEpic())]);

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: store,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.teal,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Flutter REDUX'),
          ),
          body: const HomeScreen(),
        ),
      ),
    );
  }
}
