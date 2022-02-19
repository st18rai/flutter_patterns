import 'package:flutter/material.dart';
import 'package:flutter_patterns/viper/ui/interactor/posts_interactor.dart';
import 'package:flutter_patterns/viper/ui/presenter/posts_presenter.dart';
import 'package:provider/provider.dart';
import 'package:flutter_patterns/viper/ui/pages/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => PostsPresenter(
              postsInteractor: PostsInteractor(),
            ),
          ),
        ],
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Flutter VIPER'),
          ),
          body: const HomeScreen(),
        ),
      ),
    );
  }
}
