import 'package:flutter_patterns/patterns/adapter/fahrenheit_sensor.dart';

class FahrenheitToCelsiusAdapter {
  FahrenheitSensor sensor;

  FahrenheitToCelsiusAdapter(this.sensor);

  int getTemperature() {
    int fahrenheitTemp = sensor.getTemperature();
    return fahrenheitTemp - 32;
  }
}
