part of 'city_search_bloc.dart';

class CitySearchState extends Equatable {
  final CurrentWeatherResponseDto? data;

  const CitySearchState({this.data});

  CitySearchState copyWith({
    CurrentWeatherResponseDto? data,
  }) {
    return CitySearchState(data: data ?? this.data);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [data];
}
