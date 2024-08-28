
import 'package:flutter_weather_app/features/forecast/domain/models/models/forecast_info_data.dart';

import 'forecast_current_data.dart';
import 'forecast_location_data.dart';

class ForecastData {
  final ForecastLocationData? location;
  final ForecastCurrentData? current;
  final ForecastInfoData? forecast;

  ForecastData(
      {required this.location, required this.current, required this.forecast});


  @override
  String toString() {
    return 'ForecastData{location: $location, current: $current, forecast: $forecast}';
  }

  @override
  List<Object?> get props => [location, current, forecast];
}
