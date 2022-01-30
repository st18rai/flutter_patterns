import 'package:flutter_patterns/patterns/factory/abstract_factory/car_hatchback.dart';

class BMWCarHatchback extends HatchbackCar {
  @override
  void drive() {
    print('Drive BMW hatchback');
  }
}
