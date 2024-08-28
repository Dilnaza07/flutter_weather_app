import 'package:flutter_weather_app/features/sity_search/domain/models/weather_condition_data.dart';
import 'package:flutter_weather_app/features/sity_search/domain/models/weather_current_data.dart';
import 'package:flutter_weather_app/features/sity_search/domain/models/weather_location_data.dart';
import 'package:flutter_weather_app/features/sity_search/presentation/models/weather_condition_model.dart';
import 'package:flutter_weather_app/features/sity_search/presentation/models/weather_condition_state.dart';
import 'package:flutter_weather_app/features/sity_search/presentation/models/weather_model.dart';

import '../../domain/models/weather_data.dart';
import '../models/weather_current_model.dart';
import '../models/weather_location_model.dart';

class WeatherModelMapper {
  WeatherModel mapToWeatherData(WeatherData domain) {
    final location = domain.location;
    final current = domain.current;
    return WeatherModel(
      location: location != null
          ? mapToWeatherLocationData(location)
          : WeatherLocationModel(
              name: '', region: '', country: '', localtime: ''),
      current: current != null
          ? mapToWeatherCurrentData(current)
          : WeatherCurrentModel(
              lastUpdated: '',
              tempC: 0,
              isDay: 0,
              condition: WeatherConditionState.unknown,
              windKph: 0,
              windDegree: 0,
              pressureMb: 0,
              pressureIn: 0,
              precipMm: 0,
              humidity: 0,
              cloud: 0,
              feelslikeC: 0,
              visKm: 0,
              uv: 0),
    );
  }

  WeatherLocationModel mapToWeatherLocationData(ForecastLocationData domain) {
    return WeatherLocationModel(
        name: domain.name ?? '',
        region: domain.region ?? '',
        country: domain.country ?? '',
        localtime: domain.localtime ?? '');
  }

  WeatherCurrentModel mapToWeatherCurrentData(ForecastCurrentData domain) {
    final condition = domain.condition;
    return WeatherCurrentModel(
      lastUpdated: domain.lastUpdated ?? '',
      tempC: domain.tempC ?? 0,
      isDay: domain.isDay ?? 0,
      condition: condition != null
          ? mapToConditionData(condition)
          : WeatherConditionState.unknown,
      windKph: domain.windKph ?? 0,
      windDegree: domain.windDegree ?? 0,
      pressureMb: domain.pressureMb ?? 0,
      precipMm: domain.precipMm ?? 0,
      humidity: domain.humidity ?? 0,
      cloud: domain.cloud ?? 0,
      feelslikeC: domain.feelslikeC ?? 0,
      visKm: domain.visKm ?? 0,
      uv: domain.uv ?? 0,
      pressureIn: (domain.pressureIn ?? 0) * 25.4,
    );
  }

  WeatherConditionState mapToConditionData(ConditionData domain) {
    return WeatherConditionState.values.firstWhere(
      (element) => element.code == domain.code,
      orElse: () => WeatherConditionState.unknown,
    );
  }
}
