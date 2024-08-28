import 'package:equatable/equatable.dart';
import 'package:flutter_weather_app/features/sity_search/data/models/current_weather_current_response-dto.dart';
import 'package:flutter_weather_app/features/sity_search/data/models/current_weather_location_response-dto.dart';

class CurrentWeatherResponseDto extends Equatable{
  final ForecastLocationResponseDto location;
  final ForecastCurrentResponseDto current;

  CurrentWeatherResponseDto({required this.location, required this.current});

  factory CurrentWeatherResponseDto.fromJson(Map<String, dynamic> json) {
    return CurrentWeatherResponseDto(
      location: ForecastLocationResponseDto?.fromJson(json['location']),
      current: ForecastCurrentResponseDto?.fromJson(json['current']),
    );
  }

  @override
  String toString() {
    return 'CurrentWeatherResponseDto{location: $location, current: $current}';
  }

  @override
  // TODO: implement props
  List<Object?> get props => [location,current];
}

