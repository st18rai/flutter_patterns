import 'package:flutter_patterns/patterns/factory/factory_method/car.dart';

class HatchbackCar implements Car {
  @override
  void drive() {
    print('Drive hatchback');
  }
}
