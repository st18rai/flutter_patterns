import 'package:flutter_patterns/patterns/factory/factory_method/car.dart';
import 'package:flutter_patterns/patterns/factory/factory_method/car_factory.dart';
import 'package:flutter_patterns/patterns/factory/factory_method/car_coupe.dart';

class CoupeFactory extends CarFactory {
  @override
  Car createCar() {
    return CarCoupe();
  }
}
