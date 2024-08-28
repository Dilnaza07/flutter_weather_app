import 'package:flutter_weather_app/features/forecast/data/models/forecast_current_response-dto.dart';
import 'package:flutter_weather_app/features/forecast/data/models/forecast_info_response_dto.dart';

import 'forecast_location_response-dto.dart';

class ForecastDataResponseDto {
  final ForecastLocationResponseDto location;
  final ForecastCurrentResponseDto current;
  final ForecastInfoResponseDto forecast;

  ForecastDataResponseDto(
      {required this.location, required this.current, required this.forecast});

  factory ForecastDataResponseDto.fromJson(Map<String, dynamic> json) {
    return ForecastDataResponseDto(
      location: ForecastLocationResponseDto?.fromJson(json['location']),
      current: ForecastCurrentResponseDto?.fromJson(json['current']),
      forecast: ForecastInfoResponseDto?.fromJson(json['forecast']),
    );
  }


  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.location != null) {
      data['location'] = this.location!.toJson();
    }
    if (this.current != null) {
      data['current'] = this.current!.toJson();
    }
    if (this.forecast != null) {
      data['forecast'] = this.forecast!.toJson();
    }
    return data;
  }

  @override
  String toString() {
    return 'ForecastDataResponseDto{location: $location, current: $current}';
  }

  @override
  // TODO: implement props
  List<Object?> get props => [location, current, forecast];
}
