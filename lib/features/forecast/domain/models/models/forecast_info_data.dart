import 'package:equatable/equatable.dart';
import 'package:flutter_weather_app/features/forecast/data/models/forecast_info/day_response_dto.dart';

class ForecastInfoData extends Equatable {
  List<DayResponseDto>? day;

  ForecastInfoData({this.day});

  @override
  String toString() {
    return 'ForecastWeatherForecastResponseDto{forecastday: $day}';
  }

  @override
  List<Object?> get props => [day];
}
