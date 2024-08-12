
enum WeatherConditionState{

  sunny(code: 1000),
  partlyClouds(code: 1003),
  cloudy(code: 1006),
  overcast(code: 1009),
  mist(code: 1030),
  rain(code: 1063),
  lightRain(code: 1183),
  heavyRain(code: 1195),
  snow(code: 1066),
  lightSnow(code: 1213),
  heavySnow(code: 1225),
  thunderstorm(code: 1087),
  fog(code: 1273),
  unknown(code: 0),
  ;

const WeatherConditionState({required this.code});

  final int code;
}