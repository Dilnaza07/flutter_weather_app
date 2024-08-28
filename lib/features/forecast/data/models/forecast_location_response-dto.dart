import 'package:equatable/equatable.dart';

class ForecastLocationResponseDto extends Equatable {
  final String? name;
  final String? region;
  final String? country;
  final double? lat;
  final double? lon;
  final String? tzId;
  final int? localtimeEpoch;
  final String? localtime;

  ForecastLocationResponseDto(
      {required this.name,
      required this.region,
      required this.country,
      required this.lat,
      required this.lon,
        required  this.tzId,
      required this.localtimeEpoch,
      required this.localtime});

  factory ForecastLocationResponseDto.fromJson(
      Map<String, dynamic> json) {
    return ForecastLocationResponseDto(
      name: json['name'],
      region: json['region'],
      country: json['country'],
      lat: json['lat'].toDouble(),
      lon: json['lon'].toDouble(),
      tzId:  json['tz_id'],
      localtimeEpoch: json['localtime_epoch'],
      localtime: json['localtime'],
    );
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['region'] = this.region;
    data['country'] = this.country;
    data['lat'] = this.lat;
    data['lon'] = this.lon;
    data['tz_id'] = this.tzId;
    data['localtime_epoch'] = this.localtimeEpoch;
    data['localtime'] = this.localtime;
    return data;
  }


  @override
  String toString() {
    return 'ForecastWeatherLocationResponseDto{name: $name, region: $region, country: $country, lat: $lat, lon: $lon, tzId: $tzId, localtimeEpoch: $localtimeEpoch, localtime: $localtime}';
  }

  @override
  // TODO: implement props
  List<Object?> get props =>
      [name, region, country, lat, lon, tzId, localtimeEpoch, localtime];
}
