import 'package:equatable/equatable.dart';

class ForecastLocationModel extends Equatable {
  final String name;
  final String region;
  final String country;
  final double lat;
  final double lon;
  final String tzId;
  final int localtimeEpoch;
  final DateTime localtime;

  ForecastLocationModel(
      {required this.name,
      required this.region,
      required this.country,
      required this.lat,
      required this.lon,
      required this.tzId,
      required this.localtimeEpoch,
      required this.localtime});



  @override
  // TODO: implement props
  List<Object?> get props =>
      [name, region, country, lat, lon, tzId, localtimeEpoch, localtime];
}
