import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter_weather_app/core/network/constants.dart';
import 'package:flutter_weather_app/features/sity_search/data/models/current_weather_response-dto.dart';
import 'package:http/http.dart';

import '../models/forecast_weather_response_dto.dart';

class WeatherForecastApi {
  Future<ForecastWeatherResponseDto?> fetchForecastWeatherData(
      {required String query}) async {
    final url = Uri.parse(
        '${NetworkConstants.baseUrl}/forecast.json?key=${NetworkConstants.apiKey}&q=$query&days=10&aqi=no&alerts=n0}');

    final response = await get(url);

    debugPrint('responce: $response');
    debugPrint('statusCode: ${response.statusCode}');
    debugPrint('body: ${response.body}');


    if(response.statusCode==200){
      final map = jsonDecode(response.body) as Map<String, dynamic>;
      return ForecastWeatherResponseDto.fromJson(map);
    }else{
      return null;
    }

  }
}
