import 'package:equatable/equatable.dart';

class WeatherLocationData extends Equatable {
  final String? name;
  final String? region;
  final String? country;
  final double? lat;
  final double? Lon;
  final int? localtime_epoch;
  final String? localtime;

  WeatherLocationData(
      {required this.name,
      required this.region,
      required this.country,
      required this.lat,
      required this.Lon,
      required this.localtime_epoch,
      required this.localtime});



  @override
  String toString() {
    return 'CurrentWeatherLocationResponseDto{name: $name, region: $region, country: $country, lat: $lat, Lon: $Lon, localtime_epoch: $localtime_epoch, localtime: $localtime}';
  }

  @override
  // TODO: implement props
  List<Object?> get props =>
      [name, region, country, lat, Lon, localtime_epoch, localtime];
}
