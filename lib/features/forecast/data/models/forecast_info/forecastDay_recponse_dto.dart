import 'package:equatable/equatable.dart';
import 'package:flutter_weather_app/features/forecast/data/models/forecast_info/astro_response_dto.dart';
import 'package:flutter_weather_app/features/forecast/data/models/forecast_info/day_response_dto.dart';
import 'package:flutter_weather_app/features/forecast/data/models/forecast_info/hour_response_dto.dart';

class ForecastDayResponseDto extends Equatable {
  final String? date;
  final int? dateEpoch;
  final DayResponseDto? day;
  final AstroResponseDto? astro;
  final List<HourResponseDto>? hour;

  ForecastDayResponseDto(
      {required this.date,
      required this.dateEpoch,
      required this.day,
      required this.astro,
      required this.hour});

  factory ForecastDayResponseDto.fromJson(Map<String, dynamic> json) {
    return ForecastDayResponseDto(
      date: json['date'],
      dateEpoch: json['date_epoch'],
      day: json['day'],
      astro: json['astro'],
      hour: json['hour'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['date'] = this.date;
    data['date_epoch'] = this.dateEpoch;
    if (this.day != null) {
      data['day'] = this.day!.toJson();
    }
    if (this.astro != null) {
      data['astro'] = this.astro!.toJson();
    }
    if (this.hour != null) {
      data['hour'] = this.hour!.map((v) => v.toJson()).toList();
    }
    return data;
  }

  @override
  // TODO: implement props
  List<Object?> get props => [date, dateEpoch, day, astro, hour];
}
