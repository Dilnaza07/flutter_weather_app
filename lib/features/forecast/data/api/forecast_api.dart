import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter_weather_app/core/network/constants.dart';
import 'package:http/http.dart';

import '../models/forecast_data_response_dto.dart';

class ForecastApi {
  Future<ForecastDataResponseDto?> fetchForecastWeatherData(
      {required String query}) async {
    final url = Uri.parse(
        '${NetworkConstants.baseUrl}/forecast.json?key=${NetworkConstants.apiKey}&q=$query&days=10&aqi=no&alerts=n0}');

    final response = await get(url);

    debugPrint('responce: $response');
    debugPrint('statusCode: ${response.statusCode}');
    debugPrint('body: ${response.body}');


    if(response.statusCode==200){
      final map = jsonDecode(response.body) as Map<String, dynamic>;
      return ForecastDataResponseDto.fromJson(map);
    }else{
      return null;
    }

  }
}
