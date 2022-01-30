import 'package:flutter_patterns/patterns/factory/simple_factory/car.dart';
import 'package:flutter_patterns/patterns/factory/simple_factory/car_factory.dart';

void main() {
  runApp();
}

void runApp() {
  Car car = CarFabric().createCar(CarType.hatchback);
  car.drive();
}
