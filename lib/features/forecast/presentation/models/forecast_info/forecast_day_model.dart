import 'package:equatable/equatable.dart';

import 'astro_model.dart';
import 'day_model.dart';
import 'hour_model.dart';

class ForecastDayModel extends Equatable {
  final String date;
  final int dateEpoch;
  final DayModel day;
  final AstroModel astro;
  final List<HourModel> hour;

  ForecastDayModel(
      {required this.date,
      required this.dateEpoch,
      required this.day,
      required this.astro,
      required this.hour});

  @override
  // TODO: implement props
  List<Object?> get props => [date, dateEpoch, day, astro, hour];
}
