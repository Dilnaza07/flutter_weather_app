import 'package:equatable/equatable.dart';

import 'forecast_info/forecastDay_recponse_dto.dart';

class ForecastInfoResponseDto extends Equatable {
  final List<ForecastDayResponseDto>? forecastday;

  ForecastInfoResponseDto({this.forecastday});

  factory ForecastInfoResponseDto.fromJson(Map<String, dynamic> json) {
    var list = json['forecastday'] as List;
    List<ForecastDayResponseDto> forecastList =
        list.map((e) => ForecastDayResponseDto.fromJson(e)).toList();
   return ForecastInfoResponseDto(
     forecastday: forecastList,
   );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.forecastday != null) {
      data['forecastday'] = this.forecastday!.map((day) => day.toJson()).toList();
    }
    return data;
  }

  @override
  String toString() {
    return 'ForecastWeatherForecastResponseDto{forecastday: $forecastday}';
  }

  @override
  // TODO: implement props
  List<Object?> get props => [forecastday];
}
