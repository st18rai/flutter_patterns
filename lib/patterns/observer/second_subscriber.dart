import 'package:flutter_patterns/patterns/observer/subscriber.dart';

class SecondSubscriber implements Subscriber {
  @override
  void update(String state) {
    print('SecondSubscriber update');
    print('SecondSubscriber state: $state');
  }
}
