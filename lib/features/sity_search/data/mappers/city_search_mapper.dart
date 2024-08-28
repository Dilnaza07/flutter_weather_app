import 'package:flutter_weather_app/features/sity_search/data/models/current_weather_current_response-dto.dart';
import 'package:flutter_weather_app/features/sity_search/data/models/current_weather_location_response-dto.dart';
import 'package:flutter_weather_app/features/sity_search/data/models/current_weather_response-dto.dart';
import 'package:flutter_weather_app/features/sity_search/data/models/weather_condition_response-dto.dart';
import 'package:flutter_weather_app/features/sity_search/domain/models/weather_condition_data.dart';
import 'package:flutter_weather_app/features/sity_search/domain/models/weather_current_data.dart';
import 'package:flutter_weather_app/features/sity_search/domain/models/weather_location_data.dart';

import '../../domain/models/weather_data.dart';

class CitySearchMapper {
  WeatherData mapToWeatherData(CurrentWeatherResponseDto dto) {
    final location = dto.location;
    final current = dto.current;
    return WeatherData(
      location: location == null ? null : mapToWeatherLocationData(location),
      current: current != null ? mapToWeatherCurrentData(current) : null,
    );
  }

  ForecastLocationData mapToWeatherLocationData(
      ForecastLocationResponseDto dto) {
    return ForecastLocationData(
        name: dto.name,
        region: dto.region,
        country: dto.country,
        lat: dto.lat,
        Lon: dto.Lon,
        localtime_epoch: dto.localtime_epoch,
        localtime: dto.localtime);
  }

  ForecastCurrentData mapToWeatherCurrentData(
      ForecastCurrentResponseDto dto) {
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

  ConditionData mapToConditionData(WeatherConditionResponseDto dto) {
    return ConditionData(text: dto.text, icon: dto.icon, code: dto.code);
  }
}
