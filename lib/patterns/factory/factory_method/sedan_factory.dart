import 'package:flutter_patterns/patterns/factory/factory_method/car.dart';
import 'package:flutter_patterns/patterns/factory/factory_method/car_factory.dart';
import 'package:flutter_patterns/patterns/factory/factory_method/car_sedan.dart';

class SedanFactory extends CarFactory {
  @override
  Car createCar() {
    return SedanCar();
  }
}
