import 'package:equatable/equatable.dart';

import '../forecast_condition_response-dto.dart';

class DayResponseDto extends Equatable {
  double? maxtempC;
  double? maxtempF;
  double? mintempC;
  double? mintempF;
  double? avgtempC;
  double? avgtempF;
  double? maxwindMph;
  double? maxwindKph;
  double? totalprecipMm;
  double? totalprecipIn;
  double? totalsnowCm;
  double? avgvisKm;
  double? avgvisMiles;
  double? avghumidity;
  double? dailyWillItRain;
  double? dailyChanceOfRain;
  double? dailyWillItSnow;
  double? dailyChanceOfSnow;
  ForecastConditionResponseDto? condition;
  double? uv;

  DayResponseDto(
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

  DayResponseDto.fromJson(Map<String, dynamic> json) {
    maxtempC = json['maxtemp_c'].toDouble();
    maxtempF = json['maxtemp_f'].toDouble();
    mintempC = json['mintemp_c'].toDouble();
    mintempF = json['mintemp_f'].toDouble();
    avgtempC = json['avgtemp_c'].toDouble();
    avgtempF = json['avgtemp_f'].toDouble();
    maxwindMph = json['maxwind_mph'].toDouble();
    maxwindKph = json['maxwind_kph'].toDouble();
    totalprecipMm = json['totalprecip_mm'].toDouble();
    totalprecipIn = json['totalprecip_in'].toDouble();
    totalsnowCm = json['totalsnow_cm'].toDouble();
    avgvisKm = json['avgvis_km'].toDouble();
    avgvisMiles = json['avgvis_miles'].toDouble();
    avghumidity = json['avghumidity'].toDouble();
    dailyWillItRain = json['daily_will_it_rain'].toDouble();
    dailyChanceOfRain = json['daily_chance_of_rain'].toDouble();
    dailyWillItSnow = json['daily_will_it_snow'].toDouble();
    dailyChanceOfSnow = json['daily_chance_of_snow'].toDouble();
    condition = json['condition'] != null
        ? new ForecastConditionResponseDto.fromJson(json['condition'])
        : null;
    uv = json['uv'].toDouble();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['maxtemp_c'] = this.maxtempC;
    data['maxtemp_f'] = this.maxtempF;
    data['mintemp_c'] = this.mintempC;
    data['mintemp_f'] = this.mintempF;
    data['avgtemp_c'] = this.avgtempC;
    data['avgtemp_f'] = this.avgtempF;
    data['maxwind_mph'] = this.maxwindMph;
    data['maxwind_kph'] = this.maxwindKph;
    data['totalprecip_mm'] = this.totalprecipMm;
    data['totalprecip_in'] = this.totalprecipIn;
    data['totalsnow_cm'] = this.totalsnowCm;
    data['avgvis_km'] = this.avgvisKm;
    data['avgvis_miles'] = this.avgvisMiles;
    data['avghumidity'] = this.avghumidity;
    data['daily_will_it_rain'] = this.dailyWillItRain;
    data['daily_chance_of_rain'] = this.dailyChanceOfRain;
    data['daily_will_it_snow'] = this.dailyWillItSnow;
    data['daily_chance_of_snow'] = this.dailyChanceOfSnow;
    if (this.condition != null) {
      data['condition'] = this.condition!.toJson();
    }
    data['uv'] = this.uv;
    return data;
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
