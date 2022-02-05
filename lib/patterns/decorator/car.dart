import 'package:flutter_patterns/patterns/decorator/equipment.dart';

class Car implements Equipment {
  @override
  drive() {
    print('Can just drive');
  }
}
