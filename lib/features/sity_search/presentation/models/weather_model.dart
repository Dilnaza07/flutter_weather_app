

import 'package:equatable/equatable.dart';
import 'package:flutter_weather_app/features/sity_search/presentation/models/weather_current_model.dart';
import 'package:flutter_weather_app/features/sity_search/presentation/models/weather_location_model.dart';

class WeatherModel extends Equatable{

  final WeatherLocationModel? location;
  final WeatherCurrentModel? current;

  WeatherModel({required this.location, required this.current});

  @override
  List<Object?> get props => [location, current];
}