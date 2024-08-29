
import 'package:equatable/equatable.dart';
import 'package:flutter_weather_app/features/forecast/presentation/models/forecast_current_model.dart';

import 'forecast_info_model.dart';
import 'forecast_location_model.dart';

class ForecastModel extends Equatable{
  final ForecastLocationModel location;
  final ForecastCurrentModel current;
  final ForecastInfoModel forecast;

  ForecastModel(
      {required this.location, required this.current, required this.forecast});


  @override
  String toString() {
    return 'ForecastModel{location: $location, current: $current, forecast: $forecast}';
  }

  @override
  List<Object?> get props => [location, current, forecast];
}
