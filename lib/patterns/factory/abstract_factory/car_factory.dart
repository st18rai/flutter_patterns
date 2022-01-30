import 'package:flutter_patterns/patterns/factory/abstract_factory/car.dart';

abstract class CarFactory {
  Car createCoupe();
  Car createSedan();
  Car createHatchback();
}
