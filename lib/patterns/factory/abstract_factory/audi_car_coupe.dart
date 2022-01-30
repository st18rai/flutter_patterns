import 'package:flutter_patterns/patterns/factory/abstract_factory/car_coupe.dart';

class AudiCarCoupe extends CarCoupe {
  @override
  void drive() {
    print('Drive AUDI coupe');
  }
}
