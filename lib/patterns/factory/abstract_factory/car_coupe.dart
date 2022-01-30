import 'package:flutter_patterns/patterns/factory/abstract_factory/car.dart';

class CarCoupe implements Car {
  @override
  void drive() {
    print('Drive coupe');
  }
}
