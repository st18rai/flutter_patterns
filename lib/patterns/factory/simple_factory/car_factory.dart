import 'package:flutter_patterns/patterns/factory/simple_factory/car.dart';
import 'package:flutter_patterns/patterns/factory/simple_factory/coupe_car.dart';
import 'package:flutter_patterns/patterns/factory/simple_factory/hatchback_car.dart';
import 'package:flutter_patterns/patterns/factory/simple_factory/sedan_car.dart';

class CarFabric {
  Car createCar(CarType type) {
    switch (type) {
      case CarType.coupe:
        return CoupeCar();
      case CarType.sedan:
        return SedanCar();
      case CarType.hatchback:
        return HatchbackCar();
    }
  }
}

enum CarType { coupe, sedan, hatchback }
