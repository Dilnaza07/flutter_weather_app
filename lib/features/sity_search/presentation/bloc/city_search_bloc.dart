import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_weather_app/features/sity_search/data/api/sity_search_api.dart';

import '../../data/models/current_weather_response-dto.dart';

part 'sity_search_state.dart';

part 'sity_search_event.dart';

class CitySearchBloc extends Bloc<CitySearchEvent, CitySearchState> {
  final CitySearchApi _citySearchApi = CitySearchApi();
  final searchController = TextEditingController();

  CitySearchBloc() : super(const CitySearchState(isLoading: false)) {
    on<CitySearchDataFetched>(_onCitySearchDataFetched);
  }

  void _onCitySearchDataFetched(
      CitySearchDataFetched event, Emitter<CitySearchState> emit) async {
    emit(state.copyWith(isLoading: true));
    final data =
        await _citySearchApi.fetchCurrentWeatherData(query: searchController.text);

    emit(state.copyWith(data: data, isLoading: false));
  }
}
