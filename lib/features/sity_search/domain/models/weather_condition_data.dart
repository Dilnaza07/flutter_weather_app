import 'package:equatable/equatable.dart';

class ConditionData extends Equatable {
  final String? text;
  final String? icon;
  final int? code;

  ConditionData(
      {required this.text, required this.icon, required this.code});


  @override
  String toString() {
    return 'WeatherConditionResponseDto{text: $text, icon: $icon, code: $code}';
  }

  @override
  // TODO: implement props
  List<Object?> get props => [text, icon, code];
}
