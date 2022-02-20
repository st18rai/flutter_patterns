import 'package:flutter_patterns/patterns/observer/first_subscriber.dart';
import 'package:flutter_patterns/patterns/observer/publisher.dart';
import 'package:flutter_patterns/patterns/observer/second_subscriber.dart';

void main() {
  runApp();
}

void runApp() {
  final publisher = Publisher();

  final firstSubscriber = FirstSubscriber();
  final secondSubscriber = SecondSubscriber();

  publisher.subscribe(firstSubscriber);
  publisher.subscribe(secondSubscriber);

  publisher.changeState('New state 1');

  publisher.unsubscribe(secondSubscriber);

  publisher.changeState('New state 2');
}
