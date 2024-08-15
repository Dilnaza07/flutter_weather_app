import 'package:equatable/equatable.dart';

class ForecastAstroResponseDto extends Equatable{
  String? sunrise;
  String? sunset;
  String? moonrise;
  String? moonset;
  String? moonPhase;
  int? moonIllumination;
  int? isMoonUp;
  int? isSunUp;

  ForecastAstroResponseDto(
      {required this.sunrise,
      required this.sunset,
      required this.moonrise,
      required this.moonset,
      required this.moonPhase,
      required this.moonIllumination,
      required this.isMoonUp,
      required this.isSunUp});

  ForecastAstroResponseDto.fromJson(Map<String, dynamic> json) {
    sunrise = json['sunrise'];
    sunset = json['sunset'];
    moonrise = json['moonrise'];
    moonset = json['moonset'];
    moonPhase = json['moon_phase'];
    moonIllumination = json['moon_illumination'];
    isMoonUp = json['is_moon_up'];
    isSunUp = json['is_sun_up'];
  }

  @override
  String toString() {
    return 'ForecastAstroResponseDto{sunrise: $sunrise, sunset: $sunset, moonrise: $moonrise, moonset: $moonset, moonPhase: $moonPhase, moonIllumination: $moonIllumination, isMoonUp: $isMoonUp, isSunUp: $isSunUp}';
  }

  @override
  // TODO: implement props
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
