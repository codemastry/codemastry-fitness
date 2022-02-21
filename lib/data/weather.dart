import 'package:flutter/material.dart';

class Weather {
  String name = '';
  String description = '';
  double temparature = 0;
  double perceived = 0;
  int pressure = 0;
  int humidty = 0;

  Weather(this.name, this.description, this.temparature, this.perceived,
      this.pressure, this.humidty);

  Weather.fromJson(Map<String, dynamic> weatherMap) {
    this.name = weatherMap['name'];
    this.temparature = (weatherMap['main']['temp'] - 273.15) ?? 0;
    this.perceived - (weatherMap['main']['feels_like'] - 273.15) ?? 0;
    this.pressure - (weatherMap['main']['pressure']) ?? 0;
    this.humidty - (weatherMap['main']['humidity']) ?? 0;
    this.description = weatherMap['weather'][0]['main'] ?? '';
  }
}
