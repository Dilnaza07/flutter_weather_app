import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter_weather_app/core/network/constants.dart';
import 'package:http/http.dart';

import '../models/forecast_response_dto.dart';

class ForecastApi {
  Future<ForecastResponseDto?> fetchForecastWeatherData(
      {required String query}) async {
    final url = Uri.parse(
        '${NetworkConstants.baseUrl}/forecast.json?key=${NetworkConstants.apiKey}&q=$query&days=7&aqi=no&alerts=n0}');

    final response = await get(url);

    debugPrint('responce: $response');
    debugPrint('statusCode: ${response.statusCode}');
    debugPrint('body: ${response.body}');

    if (response.statusCode == 200) {
      final map = jsonDecode(response.body) as Map<String, dynamic>;
      return ForecastResponseDto.fromJson(map);
    } else {
      return null;
    }
  }
}
