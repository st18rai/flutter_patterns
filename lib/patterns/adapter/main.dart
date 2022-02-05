import 'package:flutter_patterns/patterns/adapter/fahrenheit_sensor.dart';
import 'package:flutter_patterns/patterns/adapter/fahrenheit_to_celsius_adapter.dart';

void main() {
  runApp();
}

void runApp() {
  final sensor = FahrenheitSensor();
  final adapter = FahrenheitToCelsiusAdapter(sensor);

  int temperature = adapter.getTemperature();

  print('Temperature is: $temperature C');
}
