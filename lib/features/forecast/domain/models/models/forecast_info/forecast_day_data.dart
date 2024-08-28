import 'package:equatable/equatable.dart';
import 'package:flutter_weather_app/features/forecast/data/models/forecast_info/astro_response_dto.dart';
import 'package:flutter_weather_app/features/forecast/data/models/forecast_info/day_response_dto.dart';
import 'package:flutter_weather_app/features/forecast/data/models/forecast_info/hour_response_dto.dart';

class ForecastDayData extends Equatable {
  final String? date;
  final int? dateEpoch;
  final DayResponseDto? day;
  final AstroResponseDto? astro;
  final List<HourResponseDto>? hour;

  ForecastDayData(
      {required this.date,
      required this.dateEpoch,
      required this.day,
      required this.astro,
      required this.hour});

  @override
  // TODO: implement props
  List<Object?> get props => [date, dateEpoch, day, astro, hour];
}
