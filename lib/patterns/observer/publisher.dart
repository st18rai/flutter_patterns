import 'package:flutter_patterns/patterns/observer/subscriber.dart';

class Publisher {
  final List<Subscriber> _subscribers = [];
  String _state = '';

  void changeState(String state) {
    _state = state;
    notifySubscribers();
  }

  void notifySubscribers() {
    for (var subscriber in _subscribers) {
      subscriber.update(_state);
    }
  }

  void subscribe(Subscriber subscriber) {
    _subscribers.add(subscriber);
  }

  void unsubscribe(Subscriber subscriber) {
    _subscribers.remove(subscriber);
  }
}
