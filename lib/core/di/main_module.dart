import 'package:get_it/get_it.dart';

import '../../features/forecast/di/forecast_module.dart';

final getIt = GetIt.instance;

void initMainModule() {
  initForecastModule();
}
