import 'package:get_it/get_it.dart';

import '../../features/sity_search/di/city_search_module.dart';

final getIt = GetIt.instance;

void initMainModule() {
  initCitySearchModule();
}
