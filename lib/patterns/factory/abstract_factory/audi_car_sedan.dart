import 'package:flutter_patterns/patterns/factory/abstract_factory//car_sedan.dart';

class AudiCarSedan extends SedanCar {
  @override
  void drive() {
    print('Drive AUDI sedan');
  }
}
