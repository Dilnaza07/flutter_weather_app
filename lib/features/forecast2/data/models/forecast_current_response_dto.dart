import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'forecast_condition_responce_dto.dart';

part 'forecast_current_response_dto.g.dart';

@JsonSerializable()
class ForecastCurrentResponseDto extends Equatable {
  @JsonKey(name: 'last_updated_epoch', required: false, includeIfNull: false)
  final int? lastUpdatedEpoch;

  @JsonKey(name: 'last_updated', required: false, includeIfNull: false)
  final String? lastUpdated;

  @JsonKey(name: 'temp_c', required: false, includeIfNull: false)
  final double? tempC;

  @JsonKey(name: 'temp_f', required: false, includeIfNull: false)
  final double? tempF;

  @JsonKey(name: 'is_day', required: false, includeIfNull: false)
  final int? isDay;

  @JsonKey(name: 'condition', required: false, includeIfNull: false)
  final ForecastConditionResponseDto? condition;

  @JsonKey(name: 'wind_mph', required: false, includeIfNull: false)
  final double? windMph;

  @JsonKey(name: 'wind_kph', required: false, includeIfNull: false)
  final double? windKph;

  @JsonKey(name: 'wind_degree', required: false, includeIfNull: false)
  final int? windDegree;

  @JsonKey(name: 'wind_dir', required: false, includeIfNull: false)
  final String? windDir;

  @JsonKey(name: 'pressure_mb', required: false, includeIfNull: false)
  final double? pressureMb;

  @JsonKey(name: 'pressure_in', required: false, includeIfNull: false)
  final double? pressureIn;

  @JsonKey(name: 'precip_mm', required: false, includeIfNull: false)
  final double? precipMm;

  @JsonKey(name: 'precip_in', required: false, includeIfNull: false)
  final double? precipIn;

  @JsonKey(name: 'humidity', required: false, includeIfNull: false)
  final int? humidity;

  @JsonKey(name: 'cloud', required: false, includeIfNull: false)
  final int? cloud;

  @JsonKey(name: 'feelslike_c', required: false, includeIfNull: false)
  final double? feelslikeC;

  @JsonKey(name: 'feelslike_f', required: false, includeIfNull: false)
  final double? feelslikeF;

  @JsonKey(name: 'windchill_c', required: false, includeIfNull: false)
  final double? windchillC;

  @JsonKey(name: 'windchill_f', required: false, includeIfNull: false)
  final double? windchillF;

  @JsonKey(name: 'heatindex_c', required: false, includeIfNull: false)
  final double? heatindexC;

  @JsonKey(name: 'heatindex_f', required: false, includeIfNull: false)
  final double? heatindexF;

  @JsonKey(name: 'dewpoint_c', required: false, includeIfNull: false)
  final double? dewpointC;

  @JsonKey(name: 'dewpoint_f', required: false, includeIfNull: false)
  final double? dewpointF;

  @JsonKey(name: 'vis_km', required: false, includeIfNull: false)
  final double? visKm;

  @JsonKey(name: 'vis_miles', required: false, includeIfNull: false)
  final double? visMiles;

  @JsonKey(name: 'uv', required: false, includeIfNull: false)
  final double? uv;

  @JsonKey(name: 'gust_mph', required: false, includeIfNull: false)
  final double? gustMph;

  @JsonKey(name: 'gust_kph', required: false, includeIfNull: false)
  final double? gustKph;

  ForecastCurrentResponseDto(
      {required this.lastUpdatedEpoch,
      required this.lastUpdated,
      required this.tempC,
      required this.tempF,
      required this.isDay,
      required this.condition,
      required this.windMph,
      required this.windKph,
      required this.windDegree,
      required this.windDir,
      required this.pressureMb,
      required this.pressureIn,
      required this.precipMm,
      required this.precipIn,
      required this.humidity,
      required this.cloud,
      required this.feelslikeC,
      required this.feelslikeF,
      required this.windchillC,
      required this.windchillF,
      required this.heatindexC,
      required this.heatindexF,
      required this.dewpointC,
      required this.dewpointF,
      required this.visKm,
      required this.visMiles,
      required this.uv,
      required this.gustMph,
      required this.gustKph});

  factory ForecastCurrentResponseDto.fromJson(Map<String, dynamic> json) =>
      _$ForecastCurrentResponseDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ForecastCurrentResponseDtoToJson(this);

  @override
  String toString() {
    return 'ForecastCurrentResponseDto{lastUpdatedEpoch: $lastUpdatedEpoch, lastUpdated: $lastUpdated, tempC: $tempC, tempF: $tempF, isDay: $isDay, condition: $condition, windMph: $windMph, windKph: $windKph, windDegree: $windDegree, windDir: $windDir, pressureMb: $pressureMb, pressureIn: $pressureIn, precipMm: $precipMm, precipIn: $precipIn, humidity: $humidity, cloud: $cloud, feelslikeC: $feelslikeC, feelslikeF: $feelslikeF, windchillC: $windchillC, windchillF: $windchillF, heatindexC: $heatindexC, heatindexF: $heatindexF, dewpointC: $dewpointC, dewpointF: $dewpointF, visKm: $visKm, visMiles: $visMiles, uv: $uv, gustMph: $gustMph, gustKph: $gustKph}';
  }

  @override
// TODO: implement props
  List<Object?> get props => [
        lastUpdatedEpoch,
        lastUpdated,
        tempC,
        tempF,
        isDay,
        condition,
        windMph,
        windKph,
        windDegree,
        windDir,
        pressureMb,
        pressureIn,
        precipMm,
        precipIn,
        humidity,
        cloud,
        feelslikeC,
        feelslikeF,
        windchillC,
        windchillF,
        heatindexC,
        heatindexF,
        dewpointC,
        dewpointF,
        visKm,
        visMiles,
        uv,
        gustMph,
        gustKph
      ];
}
