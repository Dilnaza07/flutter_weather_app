import 'package:equatable/equatable.dart';

class WeatherConditionResponseDto extends Equatable {
  final String text;
  final String icon;
  final int code;

  WeatherConditionResponseDto(
      {required this.text, required this.icon, required this.code});

  factory WeatherConditionResponseDto.fromJson(Map<String, dynamic> json) {
    return WeatherConditionResponseDto(
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
