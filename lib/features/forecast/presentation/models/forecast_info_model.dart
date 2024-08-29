import 'package:equatable/equatable.dart';
import 'package:flutter_weather_app/features/forecast/presentation/models/forecast_info/forecast_day_model.dart';



class ForecastInfoModel extends Equatable {
  List<ForecastDayModel> forecastDay;

  ForecastInfoModel({required this.forecastDay});

  @override
  String toString() {
    return 'ForecastInfoModel{forecastday: $forecastDay}';
  }

  @override
  List<Object?> get props => [forecastDay];
}
