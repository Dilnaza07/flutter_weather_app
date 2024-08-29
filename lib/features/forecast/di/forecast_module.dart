
import '../../../core/di/main_module.dart';
import '../data/api/forecast_api.dart';
import '../data/mappers/forecast_mapper.dart';
import '../data/repository/forecast_repository_impl.dart';
import '../domain/repository/forecast_interactor.dart';
import '../domain/repository/forecast_repository.dart';
import '../presentation/bloc/forecast_bloc.dart';
import '../presentation/mappers/forecast_model_mapper.dart';

void initForecastModule() {
  getIt.registerLazySingleton(() => ForecastApi());
  getIt.registerFactory(() => ForecastMapper());
  getIt.registerLazySingleton<ForecastRepository>(
      () => ForecastRepositoryImpl(getIt(), getIt()));
  getIt.registerFactory(() => ForecastInteractor(getIt()));
  getIt.registerFactory(() => ForecastModelMapper());
  getIt.registerFactory(() => ForecastBloc(getIt(), getIt()));
}
