import 'package:flutter_patterns/patterns/factory/abstract_factory/audi_car_coupe.dart';
import 'package:flutter_patterns/patterns/factory/abstract_factory/audi_car_hatchback.dart';
import 'package:flutter_patterns/patterns/factory/abstract_factory/audi_car_sedan.dart';
import 'package:flutter_patterns/patterns/factory/abstract_factory/car.dart';
import 'package:flutter_patterns/patterns/factory/abstract_factory/car_factory.dart';

class AudiFactory extends CarFactory {
  @override
  Car createCoupe() {
    return AudiCarCoupe();
  }

  @override
  Car createHatchback() {
    return AudiCarHatchback();
  }

  @override
  Car createSedan() {
    return AudiCarSedan();
  }
}
