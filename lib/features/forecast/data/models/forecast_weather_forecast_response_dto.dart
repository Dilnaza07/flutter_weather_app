import 'package:equatable/equatable.dart';
import 'package:flutter_weather_app/features/forecast/data/models/forecast_day_response_dto.dart';

class ForecastWeatherForecastResponseDto extends Equatable {

  List<ForecastDayResponseDto>? forecastday;

  ForecastWeatherForecastResponseDto({this.forecastday});

  ForecastWeatherForecastResponseDto.fromJson(Map<String, dynamic> json) {
    if (json['forecastday'] != null) {
      forecastday = <ForecastDayResponseDto>[];
      json['forecastday'].forEach((v) {
        forecastday!.add(new ForecastDayResponseDto.fromJson(v));
      });
    }
  }

  @override
  String toString() {
    return 'ForecastWeatherForecastResponseDto{forecastday: $forecastday}';
  }

  @override
  // TODO: implement props
  List<Object?> get props => [
    forecastday
  ];
}
