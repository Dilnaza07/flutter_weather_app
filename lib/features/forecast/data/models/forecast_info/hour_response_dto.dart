import 'package:equatable/equatable.dart';

import '../forecast_condition_response-dto.dart';

class HourResponseDto extends Equatable {
  int? timeEpoch;
  String? time;
  double? tempC;
  double? tempF;
  int? isDay;
  ForecastConditionResponseDto? condition;
  double? windMph;
  double? windKph;
  int? windDegree;
  String? windDir;
  double? pressureMb;
  double? pressureIn;
  double? precipMm;
  double? precipIn;
  double? snowCm;
  int? humidity;
  int? cloud;
  double? feelslikeC;
  double? feelslikeF;
  double? windchillC;
  double? windchillF;
  double? heatindexC;
  double? heatindexF;
  double? dewpointC;
  double? dewpointF;
  int? willItRain;
  int? chanceOfRain;
  int? willItSnow;
  int? chanceOfSnow;
  double? visKm;
  double? visMiles;
  double? gustMph;
  double? gustKph;
  double? uv;

  HourResponseDto(
      {this.timeEpoch,
        this.time,
        this.tempC,
        this.tempF,
        this.isDay,
        this.condition,
        this.windMph,
        this.windKph,
        this.windDegree,
        this.windDir,
        this.pressureMb,
        this.pressureIn,
        this.precipMm,
        this.precipIn,
        this.snowCm,
        this.humidity,
        this.cloud,
        this.feelslikeC,
        this.feelslikeF,
        this.windchillC,
        this.windchillF,
        this.heatindexC,
        this.heatindexF,
        this.dewpointC,
        this.dewpointF,
        this.willItRain,
        this.chanceOfRain,
        this.willItSnow,
        this.chanceOfSnow,
        this.visKm,
        this.visMiles,
        this.gustMph,
        this.gustKph,
        this.uv});

  HourResponseDto.fromJson(Map<String, dynamic> json) {
    timeEpoch = json['time_epoch'];
    time = json['time'];
    tempC = json['temp_c'].toDouble();
    tempF = json['temp_f'].toDouble();
    isDay = json['is_day'];
    condition = json['condition'] != null
        ? new ForecastConditionResponseDto.fromJson(json['condition'])
        : null;
    windMph = json['wind_mph'].toDouble();
    windKph = json['wind_kph'].toDouble();
    windDegree = json['wind_degree'];
    windDir = json['wind_dir'];
    pressureMb = json['pressure_mb'].toDouble();
    pressureIn = json['pressure_in'].toDouble();
    precipMm = json['precip_mm'].toDouble();
    precipIn = json['precip_in'].toDouble();
    snowCm = json['snow_cm'].toDouble();
    humidity = json['humidity'];
    cloud = json['cloud'];
    feelslikeC = json['feelslike_c'].toDouble();
    feelslikeF = json['feelslike_f'].toDouble();
    windchillC = json['windchill_c'].toDouble();
    windchillF = json['windchill_f'].toDouble();
    heatindexC = json['heatindex_c'].toDouble();
    heatindexF = json['heatindex_f'].toDouble();
    dewpointC = json['dewpoint_c'].toDouble();
    dewpointF = json['dewpoint_f'].toDouble();
    willItRain = json['will_it_rain'];
    chanceOfRain = json['chance_of_rain'];
    willItSnow = json['will_it_snow'];
    chanceOfSnow = json['chance_of_snow'];
    visKm = json['vis_km'].toDouble();
    visMiles = json['vis_miles'].toDouble();
    gustMph = json['gust_mph'].toDouble();
    gustKph = json['gust_kph'].toDouble();
    uv = json['uv'].toDouble();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['time_epoch'] = this.timeEpoch;
    data['time'] = this.time;
    data['temp_c'] = this.tempC;
    data['temp_f'] = this.tempF;
    data['is_day'] = this.isDay;
    if (this.condition != null) {
      data['condition'] = this.condition!.toJson();
    }
    data['wind_mph'] = this.windMph;
    data['wind_kph'] = this.windKph;
    data['wind_degree'] = this.windDegree;
    data['wind_dir'] = this.windDir;
    data['pressure_mb'] = this.pressureMb;
    data['pressure_in'] = this.pressureIn;
    data['precip_mm'] = this.precipMm;
    data['precip_in'] = this.precipIn;
    data['snow_cm'] = this.snowCm;
    data['humidity'] = this.humidity;
    data['cloud'] = this.cloud;
    data['feelslike_c'] = this.feelslikeC;
    data['feelslike_f'] = this.feelslikeF;
    data['windchill_c'] = this.windchillC;
    data['windchill_f'] = this.windchillF;
    data['heatindex_c'] = this.heatindexC;
    data['heatindex_f'] = this.heatindexF;
    data['dewpoint_c'] = this.dewpointC;
    data['dewpoint_f'] = this.dewpointF;
    data['will_it_rain'] = this.willItRain;
    data['chance_of_rain'] = this.chanceOfRain;
    data['will_it_snow'] = this.willItSnow;
    data['chance_of_snow'] = this.chanceOfSnow;
    data['vis_km'] = this.visKm;
    data['vis_miles'] = this.visMiles;
    data['gust_mph'] = this.gustMph;
    data['gust_kph'] = this.gustKph;
    data['uv'] = this.uv;
    return data;
  }

  @override
  String toString() {
    return 'ForecastHourResponseDto{timeEpoch: $timeEpoch, time: $time, tempC: $tempC, tempF: $tempF, isDay: $isDay, condition: $condition, windMph: $windMph, windKph: $windKph, windDegree: $windDegree, windDir: $windDir, pressureMb: $pressureMb, pressureIn: $pressureIn, precipMm: $precipMm, precipIn: $precipIn, snowCm: $snowCm, humidity: $humidity, cloud: $cloud, feelslikeC: $feelslikeC, feelslikeF: $feelslikeF, windchillC: $windchillC, windchillF: $windchillF, heatindexC: $heatindexC, heatindexF: $heatindexF, dewpointC: $dewpointC, dewpointF: $dewpointF, willItRain: $willItRain, chanceOfRain: $chanceOfRain, willItSnow: $willItSnow, chanceOfSnow: $chanceOfSnow, visKm: $visKm, visMiles: $visMiles, gustMph: $gustMph, gustKph: $gustKph, uv: $uv}';
  }

  @override
  // TODO: implement props
  List<Object?> get props => [
    timeEpoch,
    time,
    tempC,
    tempF,
    isDay,
    condition,
    windMph,
    windKph,
    windDegree,
    windDir,
    pressureMb,
    pressureIn,
    precipMm,
    precipIn,
    snowCm,
    humidity,
    cloud,
    feelslikeC,
    feelslikeF,
    windchillC,
    windchillF,
    heatindexC,
    heatindexF,
    dewpointC,
    dewpointF,
    willItRain,
    chanceOfRain,
    willItSnow,
    chanceOfSnow,
    visKm,
    visMiles,
    gustMph,
    gustKph,
    uv
  ];
}