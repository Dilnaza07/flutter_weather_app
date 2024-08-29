import 'package:equatable/equatable.dart';

class AstroModel extends Equatable {
  String sunrise;
  String sunset;
  String moonrise;
  String moonset;
  String moonPhase;
  int moonIllumination;
  int isMoonUp;
  int isSunUp;

  AstroModel(
      {required this.sunrise,
      required this.sunset,
      required this.moonrise,
      required this.moonset,
      required this.moonPhase,
      required this.moonIllumination,
      required this.isMoonUp,
      required this.isSunUp});

  @override
  String toString() {
    return 'AstroModel{sunrise: $sunrise, sunset: $sunset, moonrise: $moonrise, moonset: $moonset, moonPhase: $moonPhase, moonIllumination: $moonIllumination, isMoonUp: $isMoonUp, isSunUp: $isSunUp}';
  }

  @override
  List<Object?> get props => [
        sunset,
        sunrise,
        moonrise,
        moonset,
        moonPhase,
        moonIllumination,
        isMoonUp,
        isSunUp,
      ];
}
