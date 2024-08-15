import 'package:equatable/equatable.dart';
import 'package:flutter_weather_app/features/sity_search/presentation/models/weather_condition_state.dart';
import 'package:flutter_weather_app/features/sity_search/presentation/models/weather_location_model.dart';

class WeatherCurrentModel extends Equatable {
  final String lastUpdated;
  final double tempC;
  final int isDay;
  final WeatherConditionState condition;
  final double windKph;
  final int windDegree;
  final double pressureMb;
  final double pressureIn;
  final double precipMm;
  final int humidity;
  final int cloud;
  final double feelslikeC;
  final double visKm;
  final double uv;

  WeatherCurrentModel({
    required this.lastUpdated,
    required this.tempC,
    required this.isDay,
    required this.condition,
    required this.windKph,
    required this.windDegree,
    required this.pressureMb,
    required this.pressureIn,
    required this.precipMm,
    required this.humidity,
    required this.cloud,
    required this.feelslikeC,
    required this.visKm,
    required this.uv,
  });

  @override
  List<Object?> get props => [
        lastUpdated,
        tempC,
        isDay,
        condition,
        windKph,
        windDegree,
        pressureMb,
        pressureIn,
        precipMm,
        humidity,
        cloud,
        feelslikeC,
        visKm,
        uv,
      ];
}
