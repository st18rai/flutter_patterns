import 'package:flutter_patterns/patterns/decorator/equipment.dart';

class TrackEquipment implements Equipment {
  final Equipment car;

  TrackEquipment(this.car);

  @override
  drive() {
    car.drive();
    print('Can drive on track');
  }
}
