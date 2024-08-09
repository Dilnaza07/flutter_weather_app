part of 'city_search_bloc.dart';

class CitySearchState extends Equatable {
  final CurrentWeatherResponseDto? data;
  final bool isLoading;

  const CitySearchState({this.data, required this.isLoading});

  CitySearchState copyWith({
    CurrentWeatherResponseDto? data,
    bool? isLoading,
  }) {
    return CitySearchState(
        data: data ?? this.data, isLoading: isLoading ?? this.isLoading);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [data];
}
