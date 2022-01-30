import 'package:flutter_patterns/patterns/factory/factory_method/car.dart';

class SedanCar implements Car {
  @override
  void drive() {
    print('Drive sedan');
  }
}
