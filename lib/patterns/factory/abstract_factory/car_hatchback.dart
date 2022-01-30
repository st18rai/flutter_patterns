import 'package:flutter_patterns/patterns/factory/abstract_factory/car.dart';

class HatchbackCar implements Car {
  @override
  void drive() {
    print('Drive hatchback');
  }
}
