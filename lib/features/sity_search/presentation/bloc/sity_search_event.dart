part of 'city_search_bloc.dart';

sealed class CitySearchEvent extends Equatable {
  const CitySearchEvent();

  @override
  List<Object?> get props => [];
}

class CitySearchDataFetched extends CitySearchEvent {
  final String query;

  const CitySearchDataFetched({required this.query});

  @override
  List<Object?> get props => [query];
}
