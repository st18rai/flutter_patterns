import 'package:flutter_patterns/patterns/factory/abstract_factory/car.dart';

class SedanCar implements Car {
  @override
  void drive() {
    print('Drive sedan');
  }
}
