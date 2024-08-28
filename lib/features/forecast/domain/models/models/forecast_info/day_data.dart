import 'package:equatable/equatable.dart';
import 'package:flutter_weather_app/features/forecast/domain/models/models/forecast_condition_data.dart';


class DayData extends Equatable {
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
  ForecastConditionData? condition;
  int? uv;

  DayData(
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



  @override
  String toString() {
    return 'DayData{maxtempC: $maxtempC, maxtempF: $maxtempF, mintempC: $mintempC, mintempF: $mintempF, avgtempC: $avgtempC, avgtempF: $avgtempF, maxwindMph: $maxwindMph, maxwindKph: $maxwindKph, totalprecipMm: $totalprecipMm, totalprecipIn: $totalprecipIn, totalsnowCm: $totalsnowCm, avgvisKm: $avgvisKm, avgvisMiles: $avgvisMiles, avghumidity: $avghumidity, dailyWillItRain: $dailyWillItRain, dailyChanceOfRain: $dailyChanceOfRain, dailyWillItSnow: $dailyWillItSnow, dailyChanceOfSnow: $dailyChanceOfSnow, condition: $condition, uv: $uv}';
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
