import 'package:flutter_patterns/patterns/factory/simple_factory/car.dart';

class CoupeCar implements Car {
  @override
  void drive() {
    print('Drive coupe');
  }
}
