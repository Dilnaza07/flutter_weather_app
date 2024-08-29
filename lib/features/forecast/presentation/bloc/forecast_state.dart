part of 'forecast_bloc.dart';

class ForecastState extends Equatable {
  final ForecastModel? data;
  final bool isLoading;

  const ForecastState({this.data,  this.isLoading=false});

  ForecastState copyWith({
    ForecastModel? data,
    bool? isLoading,
  }) {
    return ForecastState(
        data: data ?? this.data, isLoading: isLoading ?? this.isLoading);
  }
//если нал возьми старую инфу
  @override
  List<Object?> get props => [data];
}
