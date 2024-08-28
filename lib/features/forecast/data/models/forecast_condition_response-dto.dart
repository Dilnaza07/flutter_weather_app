import 'package:equatable/equatable.dart';

class ForecastConditionResponseDto extends Equatable {
  final String? text;
  final String? icon;
  final int? code;

  ForecastConditionResponseDto(
      {required this.text, required this.icon, required this.code});

  factory ForecastConditionResponseDto.fromJson(Map<String, dynamic> json) {
    return ForecastConditionResponseDto(
      text: json['text'],
      icon: json['icon'],
      code: json['code'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['text'] = this.text;
    data['icon'] = this.icon;
    data['code'] = this.code;
    return data;
  }


  @override
  String toString() {
    return 'WeatherConditionResponseDto{text: $text, icon: $icon, code: $code}';
  }

  @override
  // TODO: implement props
  List<Object?> get props => [text, icon, code];
}
