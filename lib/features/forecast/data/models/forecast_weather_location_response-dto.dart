import 'package:equatable/equatable.dart';

class ForecastWeatherLocationResponseDto extends Equatable {
  final String? name;
  final String? region;
  final String? country;
  final double? lat;
  final double? Lon;
  final int? localtime_epoch;
  final String? localtime;

  ForecastWeatherLocationResponseDto(
      {required this.name,
      required this.region,
      required this.country,
      required this.lat,
      required this.Lon,
      required this.localtime_epoch,
      required this.localtime});

  factory ForecastWeatherLocationResponseDto.fromJson(
      Map<String, dynamic> json) {
    return ForecastWeatherLocationResponseDto(
      name: json['name'],
      region: json['region'],
      country: json['country'],
      lat: json['lat'].toDouble(),
      Lon: json['lon'].toDouble(),
      localtime_epoch: json['localtime_epoch'],
      localtime: json['localtime'],
    );
  }

  @override
  String toString() {
    return 'CurrentWeatherLocationResponseDto{name: $name, region: $region, country: $country, lat: $lat, Lon: $Lon, localtime_epoch: $localtime_epoch, localtime: $localtime}';
  }

  @override
  // TODO: implement props
  List<Object?> get props =>
      [name, region, country, lat, Lon, localtime_epoch, localtime];
}
