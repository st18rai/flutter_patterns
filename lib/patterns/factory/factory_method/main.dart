import 'package:flutter_patterns/patterns/factory/factory_method/coupe_factory.dart';
import 'package:flutter_patterns/patterns/factory/factory_method/car.dart';

void main() {
  runApp();
}

void runApp() {
  Car car = CoupeFactory().createCar();
  car.drive();
}
