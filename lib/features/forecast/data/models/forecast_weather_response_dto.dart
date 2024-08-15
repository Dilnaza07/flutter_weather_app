import 'package:flutter_weather_app/features/forecast/data/models/forecast_weather_current_response-dto.dart';
import 'package:flutter_weather_app/features/forecast/data/models/forecast_weather_forecast_response_dto.dart';

import 'forecast_weather_location_response-dto.dart';

class ForecastWeatherResponseDto {
  final ForecastWeatherLocationResponseDto location;
  final ForecastWeatherCurrentResponseDto current;
  final ForecastWeatherForecastResponseDto forecast;

  ForecastWeatherResponseDto(
      {required this.location, required this.current, required this.forecast});

  factory ForecastWeatherResponseDto.fromJson(Map<String, dynamic> json) {
    return ForecastWeatherResponseDto(
      location: ForecastWeatherLocationResponseDto?.fromJson(json['location']),
      current: ForecastWeatherCurrentResponseDto?.fromJson(json['current']),
      forecast: ForecastWeatherForecastResponseDto?.fromJson(json['forecast']),
    );
  }

  @override
  String toString() {
    return 'CurrentWeatherResponseDto{location: $location, current: $current}';
  }

  @override
  // TODO: implement props
  List<Object?> get props => [location, current];
}
