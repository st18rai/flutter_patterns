import 'package:flutter_patterns/patterns/observer/subscriber.dart';

class FirstSubscriber implements Subscriber {
  @override
  void update(String state) {
    print('FirstSubscriber update');
    print('FirstSubscriber state: $state');
  }
}
