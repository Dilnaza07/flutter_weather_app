// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ForecastResponseDto _$ForecastResponseDtoFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'ForecastResponseDto',
      json,
      ($checkedConvert) {
        final val = ForecastResponseDto(
          location: $checkedConvert(
              'location',
              (v) => ForecastLocationResponseDto.fromJson(
                  v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$ForecastResponseDtoToJson(
        ForecastResponseDto instance) =>
    <String, dynamic>{
      'location': instance.location.toJson(),
    };
