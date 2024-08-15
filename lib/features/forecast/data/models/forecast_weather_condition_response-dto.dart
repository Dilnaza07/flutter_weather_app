import 'package:equatable/equatable.dart';

class ForecastWeatherConditionResponseDto extends Equatable {
  final String? text;
  final String? icon;
  final int? code;

  ForecastWeatherConditionResponseDto(
      {required this.text, required this.icon, required this.code});

  factory ForecastWeatherConditionResponseDto.fromJson(Map<String, dynamic> json) {
    return ForecastWeatherConditionResponseDto(
      text: json['text'],
      icon: json['icon'],
      code: json['code'],
    );
  }

  @override
  String toString() {
    return 'WeatherConditionResponseDto{text: $text, icon: $icon, code: $code}';
  }

  @override
  // TODO: implement props
  List<Object?> get props => [text, icon, code];
}
