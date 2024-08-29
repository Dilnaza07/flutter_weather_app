import 'package:equatable/equatable.dart';
import 'package:flutter_weather_app/features/forecast/domain/models/models/forecast_info/forecast_day_data.dart';


class ForecastInfoData extends Equatable {
  List<ForecastDayData>? forecastDay;

  ForecastInfoData({this.forecastDay});

  @override
  String toString() {
    return 'ForecastInfoData{forecastday: $forecastDay}';
  }

  @override
  List<Object?> get props => [forecastDay];
}
