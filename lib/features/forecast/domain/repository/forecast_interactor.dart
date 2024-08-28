import '../models/models/forecast_data.dart';
import 'forecast_repository.dart';

class ForecastInteractor {
  final ForecastRepository _repository;

  ForecastInteractor(this._repository);

  Future<ForecastData?> fetchCurrentWeatherData({required String query}) async {
    return _repository.fetchCurrentWeatherData(query: query);

    //кэшированние данных /в интеракторе можно прописать логику забора данных из кэша если нет интернета
  }
}
