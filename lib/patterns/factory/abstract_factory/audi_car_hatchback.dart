import 'package:flutter_patterns/patterns/factory/abstract_factory/car_hatchback.dart';

class AudiCarHatchback extends HatchbackCar {
  @override
  void drive() {
    print('Drive AUDI hatchback');
  }
}
