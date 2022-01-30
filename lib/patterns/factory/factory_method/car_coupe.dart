import 'package:flutter_patterns/patterns/factory/factory_method/car.dart';

class CarCoupe implements Car {
  @override
  void drive() {
    print('Drive coupe');
  }
}
