import 'package:flutter_patterns/patterns/factory/abstract_factory/bmw_car_coupe.dart';
import 'package:flutter_patterns/patterns/factory/abstract_factory/bmw_car_hatchback.dart';
import 'package:flutter_patterns/patterns/factory/abstract_factory/bmw_car_sedan.dart';
import 'package:flutter_patterns/patterns/factory/abstract_factory/car.dart';
import 'package:flutter_patterns/patterns/factory/abstract_factory/car_factory.dart';

class BMWFactory extends CarFactory {
  @override
  Car createCoupe() {
    return BMWCarCoupe();
  }

  @override
  Car createHatchback() {
    return BMWCarHatchback();
  }

  @override
  Car createSedan() {
    return BMWCarSedan();
  }
}
