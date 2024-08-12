
//не используется

import 'package:equatable/equatable.dart';

class WeatherConditionModel extends Equatable {
  final String text;
  final String icon;
  final int code;

  WeatherConditionModel({required this.text, required this.icon, required this.code});

  @override
  List<Object?> get props => [text, icon, code];
}
