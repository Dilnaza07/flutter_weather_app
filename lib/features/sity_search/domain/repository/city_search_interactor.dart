import '../../data/repository/city_search_repository_impl.dart';
import '../models/weather_data.dart';
import 'city_search_repository.dart';

class CitySearchInteractor {
  final CitySearchRepository _repository;

  CitySearchInteractor(this._repository);

  Future<WeatherData?> fetchCurrentWeatherData({required String query}) async {
    return _repository.fetchCurrentWeatherData(query: query);

    //кэшированние данных /в интеракторе можно прописать логику забора данных из кэша если нет интернета
  }
}
