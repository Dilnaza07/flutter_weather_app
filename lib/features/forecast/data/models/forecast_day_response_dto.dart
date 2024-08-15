import 'package:equatable/equatable.dart';

import 'forecast_weather_condition_response-dto.dart';

class ForecastDayResponseDto extends Equatable {
  double? maxtempC;
  double? maxtempF;
  double? mintempC;
  double? mintempF;
  double? avgtempC;
  double? avgtempF;
  double? maxwindMph;
  double? maxwindKph;
  double? totalprecipMm;
  int? totalprecipIn;
  int? totalsnowCm;
  int? avgvisKm;
  int? avgvisMiles;
  int? avghumidity;
  int? dailyWillItRain;
  int? dailyChanceOfRain;
  int? dailyWillItSnow;
  int? dailyChanceOfSnow;
  ForecastWeatherConditionResponseDto? condition;
  int? uv;

  ForecastDayResponseDto(
      {required this.maxtempC,
      required this.maxtempF,
      required this.mintempC,
      required this.mintempF,
      required this.avgtempC,
      required this.avgtempF,
      required this.maxwindMph,
      required this.maxwindKph,
      required this.totalprecipMm,
      required this.totalprecipIn,
      required this.totalsnowCm,
      required this.avgvisKm,
      required this.avgvisMiles,
      required this.avghumidity,
      required this.dailyWillItRain,
      required this.dailyChanceOfRain,
      required this.dailyWillItSnow,
      required this.dailyChanceOfSnow,
      required this.condition,
      required this.uv});

  ForecastDayResponseDto.fromJson(Map<String, dynamic> json) {
    maxtempC = json['maxtemp_c'];
    maxtempF = json['maxtemp_f'];
    mintempC = json['mintemp_c'];
    mintempF = json['mintemp_f'];
    avgtempC = json['avgtemp_c'];
    avgtempF = json['avgtemp_f'];
    maxwindMph = json['maxwind_mph'];
    maxwindKph = json['maxwind_kph'];
    totalprecipMm = json['totalprecip_mm'];
    totalprecipIn = json['totalprecip_in'];
    totalsnowCm = json['totalsnow_cm'];
    avgvisKm = json['avgvis_km'];
    avgvisMiles = json['avgvis_miles'];
    avghumidity = json['avghumidity'];
    dailyWillItRain = json['daily_will_it_rain'];
    dailyChanceOfRain = json['daily_chance_of_rain'];
    dailyWillItSnow = json['daily_will_it_snow'];
    dailyChanceOfSnow = json['daily_chance_of_snow'];
    condition = json['condition'] != null
        ? new ForecastWeatherConditionResponseDto.fromJson(json['condition'])
        : null;
    uv = json['uv'];
  }

  @override
  String toString() {
    return 'ForecastDayResponseDto{maxtempC: $maxtempC, maxtempF: $maxtempF, mintempC: $mintempC, mintempF: $mintempF, avgtempC: $avgtempC, avgtempF: $avgtempF, maxwindMph: $maxwindMph, maxwindKph: $maxwindKph, totalprecipMm: $totalprecipMm, totalprecipIn: $totalprecipIn, totalsnowCm: $totalsnowCm, avgvisKm: $avgvisKm, avgvisMiles: $avgvisMiles, avghumidity: $avghumidity, dailyWillItRain: $dailyWillItRain, dailyChanceOfRain: $dailyChanceOfRain, dailyWillItSnow: $dailyWillItSnow, dailyChanceOfSnow: $dailyChanceOfSnow, condition: $condition, uv: $uv}';
  }

  @override
  // TODO: implement props
  List<Object?> get props => [
        maxtempC,
        maxtempF,
        mintempC,
        mintempF,
        avgtempC,
        avgtempF,
        maxwindMph,
        maxwindKph,
        totalprecipMm,
        totalprecipIn,
        totalsnowCm,
        avgvisKm,
        avgvisMiles,
        avghumidity,
        dailyWillItRain,
        dailyChanceOfRain,
        dailyWillItSnow,
        dailyChanceOfSnow,
        condition,
        uv
      ];
}
