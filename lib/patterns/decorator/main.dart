import 'package:flutter_patterns/patterns/decorator/car.dart';
import 'package:flutter_patterns/patterns/decorator/equipment.dart';
import 'package:flutter_patterns/patterns/decorator/offroad_equipment.dart';
import 'package:flutter_patterns/patterns/decorator/track_equipment.dart';

void main() {
  runApp();
}

void runApp() {
  print('Base car:');
  Equipment car = Car();
  car.drive();

  print('With OffRoadEquipment:');
  car = OffRoadEquipment(car);
  car.drive();

  print('With TrackEquipment:');
  car = TrackEquipment(car);
  car.drive();
}
