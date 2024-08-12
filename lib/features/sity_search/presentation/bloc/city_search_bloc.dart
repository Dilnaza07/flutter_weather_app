import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_weather_app/features/sity_search/domain/models/weather_data.dart';

import '../../domain/repository/city_search_interactor.dart';
import '../mappers/weather_model_mapper.dart';
import '../models/weather_model.dart';

part 'sity_search_state.dart';

part 'sity_search_event.dart';

class CitySearchBloc extends Bloc<CitySearchEvent, CitySearchState> {
  final searchController = TextEditingController();
  final CitySearchInteractor _citySearchInteractor = CitySearchInteractor();
  final WeatherModelMapper _weatherModelMapper = WeatherModelMapper();

  CitySearchBloc() : super(const CitySearchState(isLoading: false)) {
    on<CitySearchDataFetched>(_onCitySearchDataFetched);
  }

  void _onCitySearchDataFetched(
      CitySearchDataFetched event, Emitter<CitySearchState> emit) async {
    emit(state.copyWith(isLoading: true));
    final data = await _citySearchInteractor.fetchCurrentWeatherData(
        query: searchController.text);

    final model =
        data != null ? _weatherModelMapper.mapToWeatherData(data) : null;
    emit(state.copyWith(data: model, isLoading: false));
  }
}
