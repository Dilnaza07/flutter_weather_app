import 'package:flutter_weather_app/features/sity_search/data/mappers/city_search_mapper.dart';
import 'package:flutter_weather_app/features/sity_search/domain/models/weather_data.dart';
import 'package:flutter_weather_app/features/sity_search/domain/repository/city_search_repository.dart';

import '../api/sity_search_api.dart';

class CitySearchRepositoryImpl extends CitySearchRepository {
  final CitySearchApi _citySearchApi;
  final CitySearchMapper _citySearchMapper;

  CitySearchRepositoryImpl(this._citySearchApi, this._citySearchMapper);

  @override
  Future<WeatherData?> fetchCurrentWeatherData({required String query}) async {
    final data = await _citySearchApi.fetchCurrentWeatherData(query: query);
    if (data == null) return null;
    return _citySearchMapper.mapToWeatherData(data);

    // return _citySearchApi
    //     .fetchCurrentWeatherData(query: query)
    //     .then((value) => value ! = null ? _citySearchMapper.mapToWeatherData(value) : null);
  }
}
