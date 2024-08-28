import 'package:equatable/equatable.dart';
import 'package:flutter_weather_app/features/forecast/data/models/forecast_info/day_response_dto.dart';
import 'package:flutter_weather_app/features/forecast/domain/models/models/forecast_info/day_data.dart';
import 'package:flutter_weather_app/features/forecast/domain/models/models/forecast_info/forecast_day_data.dart';


class ForecastInfoData extends Equatable {
  List<DayData>? forecastDay;

  ForecastInfoData({this.forecastDay});

  @override
  String toString() {
    return 'ForecastInfoData{forecastday: $forecastDay}';
  }

  @override
  List<Object?> get props => [forecastDay];
}
