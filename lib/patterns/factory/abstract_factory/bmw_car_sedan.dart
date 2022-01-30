import 'package:flutter_patterns/patterns/factory/abstract_factory/car_sedan.dart';

class BMWCarSedan extends SedanCar {
  @override
  void drive() {
    print('Drive BMW sedan');
  }
}
