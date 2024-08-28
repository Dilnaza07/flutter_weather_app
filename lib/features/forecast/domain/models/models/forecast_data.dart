import 'package:flutter_weather_app/features/forecast/data/models/forecast_current_response-dto.dart';
import 'package:flutter_weather_app/features/forecast/data/models/forecast_info_response_dto.dart';

import 'forecast_location_data.dart';

class ForecastData {
  final ForecastLocationData? location;
  final ForecastCurrentResponseDto? current;
  final ForecastInfoResponseDto? forecast;

  ForecastData(
      {required this.location, required this.current, required this.forecast});


  @override
  String toString() {
    return 'ForecastData{location: $location, current: $current, forecast: $forecast}';
  }

  @override
  List<Object?> get props => [location, current, forecast];
}
