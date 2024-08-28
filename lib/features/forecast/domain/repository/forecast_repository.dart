


import '../models/models/forecast_data.dart';

abstract class ForecastRepository{

  Future<ForecastData?> fetchCurrentWeatherData({required String query});

}