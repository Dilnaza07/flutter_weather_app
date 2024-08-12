part of 'city_search_bloc.dart';

class CitySearchState extends Equatable {
  final WeatherModel? data;
  final bool isLoading;

  const CitySearchState({this.data,  this.isLoading=false});

  CitySearchState copyWith({
    WeatherModel? data,
    bool? isLoading,
  }) {
    return CitySearchState(
        data: data ?? this.data, isLoading: isLoading ?? this.isLoading);
  }
//если нал возьми старую инфу
  @override
  List<Object?> get props => [data];
}
