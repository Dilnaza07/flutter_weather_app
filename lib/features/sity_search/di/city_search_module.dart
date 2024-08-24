import 'package:flutter_weather_app/features/sity_search/data/api/sity_search_api.dart';
import 'package:flutter_weather_app/features/sity_search/data/mappers/city_search_mapper.dart';
import 'package:flutter_weather_app/features/sity_search/data/repository/city_search_repository_impl.dart';
import 'package:flutter_weather_app/features/sity_search/domain/repository/city_search_interactor.dart';
import 'package:flutter_weather_app/features/sity_search/presentation/mappers/weather_model_mapper.dart';

import '../../../core/di/main_module.dart';
import '../presentation/bloc/city_search_bloc.dart';

void initCitySearchModule() {
  getIt.registerLazySingleton(() => CitySearchApi());
  getIt.registerFactory(() => CitySearchMapper());
  getIt.registerLazySingleton<CitySearchRepositoryImpl>(
      () => CitySearchRepositoryImpl(getIt(), getIt()));
  getIt.registerFactory(() => CitySearchInteractor(getIt()));
  getIt.registerFactory(() => WeatherModelMapper());
  getIt.registerFactory(() => CitySearchBloc(getIt(), getIt()));
}
