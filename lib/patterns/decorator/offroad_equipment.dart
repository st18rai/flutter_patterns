import 'package:flutter_patterns/patterns/decorator/equipment.dart';

class OffRoadEquipment implements Equipment {
  final Equipment car;

  OffRoadEquipment(this.car);

  @override
  drive() {
    car.drive();
    print('Can drive everywhere');
  }
}
