import 'package:equatable/equatable.dart';
import 'package:flutter_weather_app/features/forecast/data/models/forecast_info/day_response_dto.dart';

class ForecastInfoResponseDto extends Equatable {

  List<DayResponseDto>? forecastday;

  ForecastInfoResponseDto({this.forecastday});

  ForecastInfoResponseDto.fromJson(Map<String, dynamic> json) {
    if (json['forecastday'] != null) {
      forecastday = <DayResponseDto>[];
      json['forecastday'].forEach((v) {
        forecastday!.add(new DayResponseDto.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.forecastday != null) {
      data['forecastday'] = this.forecastday!.map((v) => v.toJson()).toList();
    }
    return data;
  }


  @override
  String toString() {
    return 'ForecastWeatherForecastResponseDto{forecastday: $forecastday}';
  }

  @override
  // TODO: implement props
  List<Object?> get props => [
    forecastday
  ];
}
