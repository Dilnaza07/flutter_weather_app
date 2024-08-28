import 'package:equatable/equatable.dart';
import 'package:flutter_weather_app/features/sity_search/domain/models/weather_current_data.dart';
import 'package:flutter_weather_app/features/sity_search/domain/models/weather_location_data.dart';

class WeatherData extends Equatable{
  final WeatherLocationData? location;
  final WeatherCurrentData? current;

  WeatherData({required this.location, required this.current});


  @override
  String toString() {
    return 'CurrentWeatherResponseDto{location: $location, current: $current}';
  }

  @override
  // TODO: implement props
  List<Object?> get props => [location,current];
}

