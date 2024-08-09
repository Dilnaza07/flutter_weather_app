import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_weather_app/core/network/constants.dart';
import 'package:http/http.dart';

import '../models/current_weather_response-dto.dart';

class CitySearchApi {

  Future<CurrentWeatherResponseDto?> fetchCurrentWeatherData(
      {required String query}) async {

    final url = Uri.parse(
        '${NetworkConstants.baseUrl}/current.json?key=${NetworkConstants.apiKey}&q=$query&aqi=no');

    final response = await get(url);
    debugPrint('responce: $response');
    debugPrint('statusCode: ${response.statusCode}');
    debugPrint('body: ${response.body}');

    if (response.statusCode == 200) {
      final map = jsonDecode(response.body) as Map<String, dynamic>;
      return CurrentWeatherResponseDto.fromJson(map);
    } else {
      return null;
    }

    // return get(
    //     Uri.parse('https://api.weatherapi.com/v1/current.json?key=2990fdf55f0849e9a52111630240508&q=bishkek&aqi=no')
    // );
  }
}
