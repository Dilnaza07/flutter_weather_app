import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'forecast_location_response_dto.g.dart';

@JsonSerializable()

class ForecastLocationResponseDto extends Equatable {

  @JsonKey(name: 'name', required: false, includeIfNull: false)
  final String? name;

  @JsonKey(name: 'region', required: false, includeIfNull: false)
  final String? region;

  @JsonKey(name: 'country', required: false, includeIfNull: false)
  final String? country;

  @JsonKey(name: 'lat', required: false, includeIfNull: false)
  final double? lat;

  @JsonKey(name: 'lon', required: false, includeIfNull: false)
  final double? lon;

  @JsonKey(name: 'localtime_epoch', required: false, includeIfNull: false)
  final int? localtime_epoch;

  @JsonKey(name: 'localtime', required: false, includeIfNull: false)
  final String? localtime;

  ForecastLocationResponseDto(
      {required this.name,
        required this.region,
        required this.country,
        required this.lat,
        required this.lon,
        required this.localtime_epoch,
        required this.localtime});

  factory ForecastLocationResponseDto.fromJson(
      Map<String, dynamic> json) => _$ForecastLocationResponseDtoFromJson(json);

  Map<String, dynamic> toJson()=>_$ForecastLocationResponseDtoToJson(this);


  @override
  String toString() {
    return 'ForecastLocationResponseDto{name: $name, region: $region, country: $country, lat: $lat, Lon: $lon, localtime_epoch: $localtime_epoch, localtime: $localtime}';
  }

  @override
  // TODO: implement props
  List<Object?> get props =>
      [name, region, country, lat, lon, localtime_epoch, localtime];
}
