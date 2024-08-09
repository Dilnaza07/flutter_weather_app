import 'package:equatable/equatable.dart';
import 'package:flutter_weather_app/features/sity_search/data/models/current_weather_current_response-dto.dart';
import 'package:flutter_weather_app/features/sity_search/data/models/current_weather_location_response-dto.dart';

class CurrentWeatherResponseDto extends Equatable{
  final CurrentWeatherLocationResponseDto location;
  final CurrentWeatherCurrentResponseDto current;

  CurrentWeatherResponseDto({required this.location, required this.current});

  factory CurrentWeatherResponseDto.fromJson(Map<String, dynamic> json) {
    return CurrentWeatherResponseDto(
      location: CurrentWeatherLocationResponseDto.fromJson(json['location']),
      current: CurrentWeatherCurrentResponseDto.fromJson(json['current']),
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

