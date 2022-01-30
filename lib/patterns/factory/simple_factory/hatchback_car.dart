import 'package:flutter_patterns/patterns/factory/simple_factory/car.dart';

class HatchbackCar implements Car {
  @override
  void drive() {
    print('Drive hatchback');
  }
}
