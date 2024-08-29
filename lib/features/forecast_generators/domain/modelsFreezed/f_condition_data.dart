

import 'package:freezed_annotation/freezed_annotation.dart';

part 'f_condition_data.freezed.dart';

@freezed
class FConditionData with _$FConditionData{

  factory FConditionData({
    final String? text,
    final String? icon,
    final int? code,
})=_FConditionData;
}