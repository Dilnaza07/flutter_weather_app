import 'package:flutter_weather_app/features/forecast/data/api/forecast_api.dart';
import 'package:flutter_weather_app/features/forecast/data/mappers/forecast_mapper.dart';

import '../../domain/models/models/forecast_data.dart';
import '../../domain/repository/forecast_repository.dart';


class ForecastRepositoryImpl extends ForecastRepository {
  final ForecastApi _forecastApi;
  final ForecastMapper _forecastMapper;

  ForecastRepositoryImpl(this._forecastApi, this._forecastMapper);

  @override
  Future<ForecastData?> fetchCurrentWeatherData({required String query}) async {
    final data = await _forecastApi.fetchForecastWeatherData(query: query);
    if (data == null) return null;
    return _forecastMapper.mapToForecastData(data);

    // return _citySearchApi
    //     .fetchCurrentWeatherData(query: query)
    //     .then((value) => value ! = null ? _citySearchMapper.mapToWeatherData(value) : null);
  }
}
