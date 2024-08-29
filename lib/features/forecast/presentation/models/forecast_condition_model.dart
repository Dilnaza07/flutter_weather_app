import 'package:equatable/equatable.dart';

class ForecastConditionModel extends Equatable {
  final String text;
  final String icon;
  final int code;

  ForecastConditionModel(
      {required this.text, required this.icon, required this.code});

  @override
  String toString() {
    return 'ForecastConditionModel{text: $text, icon: $icon, code: $code}';
  }

  @override
  // TODO: implement props
  List<Object?> get props => [text, icon, code];
}
