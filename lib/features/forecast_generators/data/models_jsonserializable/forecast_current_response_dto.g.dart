// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_current_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ForecastCurrentResponseDto _$ForecastCurrentResponseDtoFromJson(
        Map<String, dynamic> json) =>
    ForecastCurrentResponseDto(
      lastUpdatedEpoch: (json['last_updated_epoch'] as num?)?.toInt(),
      lastUpdated: json['last_updated'] as String?,
      tempC: (json['temp_c'] as num?)?.toDouble(),
      tempF: (json['temp_f'] as num?)?.toDouble(),
      isDay: (json['is_day'] as num?)?.toInt(),
      condition: json['condition'] == null
          ? null
          : ForecastConditionResponseDto.fromJson(
              json['condition'] as Map<String, dynamic>),
      windMph: (json['wind_mph'] as num?)?.toDouble(),
      windKph: (json['wind_kph'] as num?)?.toDouble(),
      windDegree: (json['wind_degree'] as num?)?.toInt(),
      windDir: json['wind_dir'] as String?,
      pressureMb: (json['pressure_mb'] as num?)?.toDouble(),
      pressureIn: (json['pressure_in'] as num?)?.toDouble(),
      precipMm: (json['precip_mm'] as num?)?.toDouble(),
      precipIn: (json['precip_in'] as num?)?.toDouble(),
      humidity: (json['humidity'] as num?)?.toInt(),
      cloud: (json['cloud'] as num?)?.toInt(),
      feelslikeC: (json['feelslike_c'] as num?)?.toDouble(),
      feelslikeF: (json['feelslike_f'] as num?)?.toDouble(),
      windchillC: (json['windchill_c'] as num?)?.toDouble(),
      windchillF: (json['windchill_f'] as num?)?.toDouble(),
      heatindexC: (json['heatindex_c'] as num?)?.toDouble(),
      heatindexF: (json['heatindex_f'] as num?)?.toDouble(),
      dewpointC: (json['dewpoint_c'] as num?)?.toDouble(),
      dewpointF: (json['dewpoint_f'] as num?)?.toDouble(),
      visKm: (json['vis_km'] as num?)?.toDouble(),
      visMiles: (json['vis_miles'] as num?)?.toDouble(),
      uv: (json['uv'] as num?)?.toDouble(),
      gustMph: (json['gust_mph'] as num?)?.toDouble(),
      gustKph: (json['gust_kph'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$ForecastCurrentResponseDtoToJson(
    ForecastCurrentResponseDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('last_updated_epoch', instance.lastUpdatedEpoch);
  writeNotNull('last_updated', instance.lastUpdated);
  writeNotNull('temp_c', instance.tempC);
  writeNotNull('temp_f', instance.tempF);
  writeNotNull('is_day', instance.isDay);
  writeNotNull('condition', instance.condition);
  writeNotNull('wind_mph', instance.windMph);
  writeNotNull('wind_kph', instance.windKph);
  writeNotNull('wind_degree', instance.windDegree);
  writeNotNull('wind_dir', instance.windDir);
  writeNotNull('pressure_mb', instance.pressureMb);
  writeNotNull('pressure_in', instance.pressureIn);
  writeNotNull('precip_mm', instance.precipMm);
  writeNotNull('precip_in', instance.precipIn);
  writeNotNull('humidity', instance.humidity);
  writeNotNull('cloud', instance.cloud);
  writeNotNull('feelslike_c', instance.feelslikeC);
  writeNotNull('feelslike_f', instance.feelslikeF);
  writeNotNull('windchill_c', instance.windchillC);
  writeNotNull('windchill_f', instance.windchillF);
  writeNotNull('heatindex_c', instance.heatindexC);
  writeNotNull('heatindex_f', instance.heatindexF);
  writeNotNull('dewpoint_c', instance.dewpointC);
  writeNotNull('dewpoint_f', instance.dewpointF);
  writeNotNull('vis_km', instance.visKm);
  writeNotNull('vis_miles', instance.visMiles);
  writeNotNull('uv', instance.uv);
  writeNotNull('gust_mph', instance.gustMph);
  writeNotNull('gust_kph', instance.gustKph);
  return val;
}
