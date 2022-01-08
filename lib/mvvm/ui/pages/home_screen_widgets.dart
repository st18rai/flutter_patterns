import 'package:flutter/material.dart';
import 'package:flutter_patterns/mvvm/model/post.dart';

class LoadingWidget extends StatelessWidget {
  final Color color;

  const LoadingWidget({
    Key? key,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        backgroundColor: color,
      ),
    );
  }
}

class InfoWidget extends StatelessWidget {
  final String text;

  const InfoWidget({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 32,
        ),
      ),
    );
  }
}

class PostItemWidget extends StatelessWidget {
  final Post post;
  const PostItemWidget({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(post.id.toString()),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              post.title ?? 'No title',
              style: const TextStyle(fontSize: 20.0, color: Colors.black),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              post.body ?? 'No body',
              style: const TextStyle(fontSize: 16.0, color: Colors.blueGrey),
            ),
          ),
        ],
      ),
    );
  }
}
