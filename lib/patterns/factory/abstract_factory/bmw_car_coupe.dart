import 'package:flutter_patterns/patterns/factory/abstract_factory/car_coupe.dart';

class BMWCarCoupe extends CarCoupe {
  @override
  void drive() {
    print('Drive BMW coupe');
  }
}
