import 'package:equatable/equatable.dart';
import 'package:flutter_weather_app/features/forecast/data/models/forecast_astro_response_dto.dart';
import 'package:flutter_weather_app/features/forecast/data/models/forecast_day_response_dto.dart';
import 'package:flutter_weather_app/features/forecast/data/models/forecast_hour_response_dto.dart';

class ForecastWeatherForecastDayRecponseDto extends Equatable{
  final String? date;
  final int? dateEpoch;
  final ForecastDayResponseDto? day;
  final ForecastAstroResponseDto? astro;
  final List<ForecastHourResponseDto>? hour;

  ForecastWeatherForecastDayRecponseDto(
      {required this.date,
      required this.dateEpoch,
      required this.day,
      required this.astro,
      required this.hour});

  factory ForecastWeatherForecastDayRecponseDto.fromJson(
      Map<String, dynamic> json) {
    return ForecastWeatherForecastDayRecponseDto(
      date: json['date'],
      dateEpoch: json['date_epoch'],
      day: json['day'],
      astro: json['astro'],
      hour: json['hour'],
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [
  date, dateEpoch, day, astro, hour
  ];
}
