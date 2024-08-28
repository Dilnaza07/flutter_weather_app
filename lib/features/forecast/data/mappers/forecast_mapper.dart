import 'package:flutter_weather_app/features/forecast/data/models/forecast_info/astro_response_dto.dart';
import 'package:flutter_weather_app/features/forecast/data/models/forecast_info/day_response_dto.dart';
import 'package:flutter_weather_app/features/forecast/data/models/forecast_info/forecastDay_recponse_dto.dart';
import 'package:flutter_weather_app/features/forecast/data/models/forecast_info/hour_response_dto.dart';
import 'package:flutter_weather_app/features/forecast/data/models/forecast_info_response_dto.dart';
import 'package:flutter_weather_app/features/forecast/domain/models/models/forecast_info/astro_data.dart';
import 'package:flutter_weather_app/features/forecast/domain/models/models/forecast_info/day_data.dart';
import 'package:flutter_weather_app/features/forecast/domain/models/models/forecast_info/forecast_day_data.dart';
import 'package:flutter_weather_app/features/forecast/domain/models/models/forecast_info/hour_data.dart';

import '../../domain/models/models/forecast_condition_data.dart';
import '../../domain/models/models/forecast_current_data.dart';
import '../../domain/models/models/forecast_data.dart';
import '../../domain/models/models/forecast_info_data.dart';
import '../../domain/models/models/forecast_location_data.dart';
import '../models/forecast_condition_response-dto.dart';
import '../models/forecast_current_response-dto.dart';
import '../models/forecast_data_response_dto.dart';
import '../models/forecast_location_response-dto.dart';

class ForecastMapper {
  ForecastData mapToForecastData(ForecastDataResponseDto dto) {
    final location = dto.location;
    final current = dto.current;
    final forecast = dto.forecast;
    return ForecastData(
      location: location == null ? null : mapToForecastLocationData(location),
      current: current != null ? mapToForecastCurrentData(current) : null,
      forecast: forecast == null ? null : mapToForecastInfoData(forecast),
    );
  }

  ForecastInfoData mapToForecastInfoData(ForecastInfoResponseDto dto) {
    //final forecastDay = dto.forecastday?.map((item) => mapToDayData(item));
    final forecastDay = dto.forecastday?.map(mapToDayData).toList();
    return ForecastInfoData(
        forecastDay: forecastDay != null ? forecastDay : null);
  }

  ForecastDayData mapToForecastDayData(ForecastDayResponseDto dto) {
    final day = dto.day;
    final astro = dto.astro;
    final hour = dto.hour;
    return ForecastDayData(
      date: dto.date,
      dateEpoch: dto.dateEpoch,
      day: day != null ? mapToDayData(day) : null,
      astro: astro != null ? mapToAstroData(astro) : null,
      hour: hour != null ? hour.map(mapToHourData).toList() : null,
    );
  }

  DayData mapToDayData(DayResponseDto dto) {
    final condition = dto.condition;
    return DayData(
      maxtempC: dto.maxtempC,
      mintempC: dto.mintempC,
      avgtempC: dto.avgtempC,
      maxwindMph: dto.maxwindMph,
      maxwindKph: dto.maxwindKph,
      totalprecipIn: dto.totalprecipIn,
      totalprecipMm: dto.totalprecipMm,
      totalsnowCm: dto.totalsnowCm,
      avgvisKm: dto.avgvisKm,
      avgvisMiles: dto.avgvisMiles,
      avghumidity: dto.avghumidity,
      dailyWillItRain: dto.dailyWillItRain,
      dailyChanceOfRain: dto.dailyChanceOfRain,
      dailyWillItSnow: dto.dailyWillItSnow,
      dailyChanceOfSnow: dto.dailyChanceOfSnow,
      condition: condition != null ? mapToConditionData(condition) : null,
      uv: dto.uv,
      maxtempF: dto.maxtempF,
      mintempF: dto.mintempF,
      avgtempF: dto.avgtempF,
    );
  }

  AstroData mapToAstroData(AstroResponseDto dto) {
    return AstroData(
        sunrise: dto.sunrise,
        sunset: dto.sunset,
        moonrise: dto.moonrise,
        moonset: dto.moonset,
        moonPhase: dto.moonPhase,
        moonIllumination: dto.moonIllumination,
        isMoonUp: dto.isMoonUp,
        isSunUp: dto.isSunUp);
  }

  HourData mapToHourData(HourResponseDto dto) {
    final condition = dto.condition;
    return HourData(
      timeEpoch: dto.timeEpoch,
      time: dto.time,
      tempC: dto.tempC,
      isDay: dto.isDay,
      condition: condition != null ? mapToConditionData(condition) : null,
      windMph: dto.windMph,
      windKph: dto.windKph,
      windDegree: dto.windDegree,
      windDir: dto.windDir,
      pressureMb: dto.pressureMb,
      pressureIn: dto.pressureIn,
      precipMm: dto.precipMm,
      precipIn: dto.precipIn,
      snowCm: dto.snowCm,
      humidity: dto.humidity,
      cloud: dto.cloud,
      feelslikeC: dto.feelslikeC,
      windchillC: dto.windchillC,
      heatindexC: dto.heatindexC,
      dewpointC: dto.dewpointC,
      willItRain: dto.willItRain,
      chanceOfRain: dto.chanceOfRain,
      willItSnow: dto.willItSnow,
      chanceOfSnow: dto.chanceOfSnow,
      visKm: dto.visKm,
      visMiles: dto.visMiles,
      gustMph: dto.gustMph,
      gustKph: dto.gustKph,
      uv: dto.uv,
    );
  }

  ForecastLocationData mapToForecastLocationData(
      ForecastLocationResponseDto dto) {
    return ForecastLocationData(
        name: dto.name,
        region: dto.region,
        country: dto.country,
        lat: dto.lat,
        lon: dto.lon,
        localtimeEpoch: dto.localtimeEpoch,
        localtime: dto.localtime,
        tzId: dto.tzId);
  }

  ForecastCurrentData mapToForecastCurrentData(ForecastCurrentResponseDto dto) {
    final condition = dto.condition;
    return ForecastCurrentData(
        lastUpdatedEpoch: dto.lastUpdatedEpoch,
        lastUpdated: dto.lastUpdated,
        tempC: dto.tempC,
        tempF: dto.tempF,
        isDay: dto.isDay,
        condition: condition != null ? mapToConditionData(condition) : null,
        windMph: dto.windMph,
        windKph: dto.windKph,
        windDegree: dto.windDegree,
        windDir: dto.windDir,
        pressureMb: dto.pressureMb,
        pressureIn: dto.pressureIn,
        precipMm: dto.precipMm,
        precipIn: dto.precipIn,
        humidity: dto.humidity,
        cloud: dto.cloud,
        feelslikeC: dto.feelslikeC,
        feelslikeF: dto.feelslikeF,
        windchillC: dto.windchillC,
        windchillF: dto.windchillF,
        heatindexC: dto.heatindexC,
        heatindexF: dto.heatindexF,
        dewpointC: dto.dewpointC,
        dewpointF: dto.dewpointF,
        visKm: dto.visKm,
        visMiles: dto.visMiles,
        uv: dto.uv,
        gustMph: dto.gustMph,
        gustKph: dto.gustKph);
  }

  ForecastConditionData mapToConditionData(ForecastConditionResponseDto dto) {
    return ForecastConditionData(
        text: dto.text, icon: dto.icon, code: dto.code);
  }
}
