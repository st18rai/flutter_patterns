import 'package:flutter_patterns/patterns/factory/abstract_factory/audi_factory.dart';
import 'package:flutter_patterns/patterns/factory/abstract_factory/bmw_factory.dart';
import 'package:flutter_patterns/patterns/factory/abstract_factory/car.dart';
import 'package:flutter_patterns/patterns/factory/abstract_factory/car_factory.dart';

void main() {
  runApp(isBMW: true);
}

void runApp({required bool isBMW}) {
  CarFactory factory;

  factory = isBMW ? BMWFactory() : AudiFactory();

  Car car = factory.createCoupe();

  car.drive();
}
