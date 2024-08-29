import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'forecast_location_response_dto.dart';

part 'forecast_response_dto.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ForecastResponseDto extends Equatable {

  @JsonKey(name: 'location', required: false, includeIfNull: false)
  final ForecastLocationResponseDto location;

  ForecastResponseDto({required this.location});

  factory ForecastResponseDto.fromJson(Map<String, dynamic> json)=> _$ForecastResponseDtoFromJson(json);

  Map <String, dynamic >toJson() => _$ForecastResponseDtoToJson(this);

  @override
  // TODO: implement props
  List<Object?> get props => [location];
}

