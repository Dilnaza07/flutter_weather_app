// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_location_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ForecastLocationResponseDto _$ForecastLocationResponseDtoFromJson(
        Map<String, dynamic> json) =>
    ForecastLocationResponseDto(
      name: json['name'] as String?,
      region: json['region'] as String?,
      country: json['country'] as String?,
      lat: (json['lat'] as num?)?.toDouble(),
      lon: (json['lon'] as num?)?.toDouble(),
      localtime_epoch: (json['localtime_epoch'] as num?)?.toInt(),
      localtime: json['localtime'] as String?,
    );

Map<String, dynamic> _$ForecastLocationResponseDtoToJson(
    ForecastLocationResponseDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('region', instance.region);
  writeNotNull('country', instance.country);
  writeNotNull('lat', instance.lat);
  writeNotNull('lon', instance.lon);
  writeNotNull('localtime_epoch', instance.localtime_epoch);
  writeNotNull('localtime', instance.localtime);
  return val;
}
