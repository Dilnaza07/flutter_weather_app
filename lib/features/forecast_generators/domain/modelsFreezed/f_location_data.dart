import 'package:freezed_annotation/freezed_annotation.dart';

part 'f_location_data.freezed.dart';

@freezed
class FLocationData with _$FLocationData {
  factory FLocationData({
    String? name,
    String? region,
    String? country,
    double? lat,
    double? lon,
    String? tzId,
    int? localtimeEpoch,
    String? localtime,
  }) = _FLocationData;
}
