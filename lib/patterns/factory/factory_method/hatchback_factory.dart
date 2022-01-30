import 'package:flutter_patterns/patterns/factory/factory_method/car.dart';
import 'package:flutter_patterns/patterns/factory/factory_method/car_factory.dart';
import 'package:flutter_patterns/patterns/factory/factory_method/car_hatchback.dart';

class HatchbackFactory extends CarFactory {
  @override
  Car createCar() {
    return HatchbackCar();
  }
}
