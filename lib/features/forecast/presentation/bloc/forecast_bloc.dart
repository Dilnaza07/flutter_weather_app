import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_weather_app/features/forecast/presentation/models/forecast_model.dart';

import '../../domain/repository/forecast_interactor.dart';
import '../mappers/forecast_model_mapper.dart';


part 'forecast_state.dart';

part 'forecast_event.dart';

class ForecastBloc extends Bloc<ForecastEvent, ForecastState> {
  final searchController = TextEditingController(text: 'Bishkek');
  final ForecastInteractor _forecastInteractor;
  final ForecastModelMapper _forecastModelMapper;

  ForecastBloc(this._forecastInteractor, this._forecastModelMapper) : super(const ForecastState(isLoading: false)) {
    on<ForecastDataFetched>(_onForecastDataFetched);
  }

  void _onForecastDataFetched(
      ForecastDataFetched event, Emitter<ForecastState> emit) async {
    emit(state.copyWith(isLoading: true));
    final data = await _forecastInteractor.fetchCurrentWeatherData(
        query: searchController.text);

    final model =
        data != null ? _forecastModelMapper.mapToForecastModel(data) : null;

    emit(state.copyWith(data: model, isLoading: false));
  }
}
