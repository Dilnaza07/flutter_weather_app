import 'package:flutter_weather_app/features/forecast/domain/models/models/forecast_info/astro_data.dart';
import 'package:flutter_weather_app/features/forecast/domain/models/models/forecast_info/day_data.dart';
import 'package:flutter_weather_app/features/forecast/domain/models/models/forecast_info/forecast_day_data.dart';
import 'package:flutter_weather_app/features/forecast/domain/models/models/forecast_info/hour_data.dart';
import 'package:flutter_weather_app/features/forecast/presentation/models/forecast_current_model.dart';
import 'package:flutter_weather_app/features/forecast/presentation/models/forecast_model.dart';
import 'package:intl/intl.dart';

import '../../domain/models/models/forecast_condition_data.dart';
import '../../domain/models/models/forecast_current_data.dart';
import '../../domain/models/models/forecast_data.dart';
import '../../domain/models/models/forecast_info_data.dart';
import '../../domain/models/models/forecast_location_data.dart';
import '../models/forecast_condition_model.dart';
import '../models/forecast_info/astro_model.dart';
import '../models/forecast_info/day_model.dart';
import '../models/forecast_info/forecast_day_model.dart';
import '../models/forecast_info/hour_model.dart';
import '../models/forecast_info_model.dart';
import '../models/forecast_location_model.dart';

class ForecastModelMapper {

  ForecastModel mapToForecastModel(ForecastData domain) {
    final location = domain.location;
    final current = domain.current;
    final forecast = domain.forecast;
    return ForecastModel(
      location: location != null
          ? mapToForecastLocationModel(location)
          : ForecastLocationModel(
              name: '',
              region: '',
              country: '',
              lat: 0,
              lon: 0,
              tzId: '',
              localtimeEpoch: 0,
              localtime: DateTime.now()),
      current: current != null
          ? mapToForecastCurrentModel(current)
          : ForecastCurrentModel(
              lastUpdatedEpoch: 0,
              lastUpdated: '',
              tempC: 0,
              tempF: 0,
              isDay: 0,
              condition: ForecastConditionModel(text: '', icon: '', code: 0),
              windMph: 0,
              windKph: 0,
              windDegree: 0,
              windDir: '',
              pressureMb: 0,
              pressureIn: 0,
              precipMm: 0,
              precipIn: 0,
              humidity: 0,
              cloud: 0,
              feelslikeC: 0,
              feelslikeF: 0,
              windchillC: 0,
              windchillF: 0,
              heatindexC: 0,
              heatindexF: 0,
              dewpointC: 0,
              dewpointF: 0,
              visKm: 0,
              visMiles: 0,
              uv: 0,
              gustMph: 0,
              gustKph: 0),
      forecast: forecast != null
          ? mapToForecastInfoModel(forecast)
          : ForecastInfoModel(forecastDay: []),
    );
  }

  ForecastInfoModel mapToForecastInfoModel(ForecastInfoData domain) {
    final forecastDay = domain.forecastDay?.map(mapToForecastDayModel).toList();
    return ForecastInfoModel(
      forecastDay: forecastDay != null ? forecastDay : [],
    );
  }

  ForecastDayModel mapToForecastDayModel(ForecastDayData domain) {

    final day = domain.day;
    final astro = domain.astro;
    final hour = domain.hour;
    DateTime? date = DateFormat('yyyy-MM-dd HH:mm').tryParse(domain.date ?? '');
    return ForecastDayModel(
     // date: date ?? DateTime.now(),
      date: domain.date ?? '',
      dateEpoch: domain.dateEpoch ?? 0,
      day: day != null
          ? mapToDayModel(day)
          : DayModel(
              maxtempC: 0,
              maxtempF: 0,
              mintempC: 0,
              mintempF: 0,
              avgtempC: 0,
              avgtempF: 0,
              maxwindMph: 0,
              maxwindKph: 0,
              totalprecipMm: 0,
              totalprecipIn: 0,
              totalsnowCm: 0,
              avgvisKm: 0,
              avgvisMiles: 0,
              avghumidity: 0,
              dailyWillItRain: 0,
              dailyChanceOfRain: 0,
              dailyWillItSnow: 0,
              dailyChanceOfSnow: 0,
              condition: ForecastConditionModel(text: '', icon: '', code: 0),
              uv: 0),
      astro: astro != null
          ? mapToAstroModel(astro)
          : AstroModel(
              sunrise: '',
              sunset: '',
              moonrise: '',
              moonset: '',
              moonPhase: '',
              moonIllumination: 0,
              isMoonUp: 0,
              isSunUp: 0),
      hour: hour != null ? hour.map(mapToHourModel).toList() : [],
    );
  }

  DayModel mapToDayModel(DayData domain) {
    final condition = domain.condition;
    return DayModel(
      maxtempC: domain.maxtempC ?? 0,
      mintempC: domain.mintempC ?? 0,
      avgtempC: domain.avgtempC ?? 0,
      maxwindMph: domain.maxwindMph ?? 0,
      maxwindKph: domain.maxwindKph ?? 0,
      totalprecipIn: domain.totalprecipIn ?? 0,
      totalprecipMm: domain.totalprecipMm ?? 0,
      totalsnowCm: domain.totalsnowCm ?? 0,
      avgvisKm: domain.avgvisKm ?? 0,
      avgvisMiles: domain.avgvisMiles ?? 0,
      avghumidity: domain.avghumidity ?? 0,
      dailyWillItRain: domain.dailyWillItRain ?? 0,
      dailyChanceOfRain: domain.dailyChanceOfRain ?? 0,
      dailyWillItSnow: domain.dailyWillItSnow ?? 0,
      dailyChanceOfSnow: domain.dailyChanceOfSnow ?? 0,
      condition: condition != null
          ? mapToConditionModel(condition)
          : ForecastConditionModel(text: '', icon: '', code: 0),
      uv: domain.uv ?? 0,
      maxtempF: domain.maxtempF ?? 0,
      mintempF: domain.mintempF ?? 0,
      avgtempF: domain.avgtempF ?? 0,
    );
  }

  AstroModel mapToAstroModel(AstroData domain) {
    return AstroModel(
      sunrise: domain.sunrise ?? '',
      sunset: domain.sunset ?? '',
      moonrise: domain.moonrise ?? '',
      moonset: domain.moonset ?? '',
      moonPhase: domain.moonPhase ?? '',
      moonIllumination: domain.moonIllumination ?? 0,
      isMoonUp: domain.isMoonUp ?? 0,
      isSunUp: domain.isSunUp ?? 0,
    );
  }

  HourModel mapToHourModel(HourData domain) {
    final condition = domain.condition;
    return HourModel(
      timeEpoch: domain.timeEpoch ?? 0,
      time: domain.time ?? '',
      tempC: domain.tempC ?? 0,
      isDay: domain.isDay ?? 0,
      condition: condition != null
          ? mapToConditionModel(condition)
          : ForecastConditionModel(text: '', icon: '', code: 0),
      windMph: domain.windMph ?? 0,
      windKph: domain.windKph ?? 0,
      windDegree: domain.windDegree ?? 0,
      windDir: domain.windDir ?? '',
      pressureMb: domain.pressureMb ?? 0,
      pressureIn: domain.pressureIn ?? 0,
      precipMm: domain.precipMm ?? 0,
      precipIn: domain.precipIn ?? 0,
      snowCm: domain.snowCm ?? 0,
      humidity: domain.humidity ?? 0,
      cloud: domain.cloud ?? 0,
      feelslikeC: domain.feelslikeC ?? 0,
      windchillC: domain.windchillC ?? 0,
      heatindexC: domain.heatindexC ?? 0,
      dewpointC: domain.dewpointC ?? 0,
      willItRain: domain.willItRain ?? 0,
      chanceOfRain: domain.chanceOfRain ?? 0,
      willItSnow: domain.willItSnow ?? 0,
      chanceOfSnow: domain.chanceOfSnow ?? 0,
      visKm: domain.visKm ?? 0,
      visMiles: domain.visMiles ?? 0,
      gustMph: domain.gustMph ?? 0,
      gustKph: domain.gustKph ?? 0,
      uv: domain.uv ?? 0,
      tempF: domain.tempF ?? 0,
      feelslikeF: domain.feelslikeF ?? 0,
      windchillF: domain.windchillF ?? 0,
      heatindexF: domain.heatindexF ?? 0,
      dewpointF: domain.dewpointF ?? 0,
    );
  }

  ForecastLocationModel mapToForecastLocationModel(
      ForecastLocationData domain) {

    DateTime? dateTime = DateFormat('yyyy-MM-dd HH:mm').tryParse(domain.localtime ?? '');

    return ForecastLocationModel(
      name: domain.name ?? '',
      region: domain.region ?? '',
      country: domain.country ?? '',
      lat: domain.lat ?? 0,
      lon: domain.lon ?? 0,
      localtimeEpoch: domain.localtimeEpoch ?? 0,
      localtime: dateTime ?? DateTime.now(),
      tzId: domain.tzId ?? '',
    );
  }

  ForecastCurrentModel mapToForecastCurrentModel(ForecastCurrentData domain) {
    final condition = domain.condition;
    return ForecastCurrentModel(
      lastUpdatedEpoch: domain.lastUpdatedEpoch ?? 0,
      lastUpdated: domain.lastUpdated ?? '',
      tempC: domain.tempC ?? 0,
      tempF: domain.tempF ?? 0,
      isDay: domain.isDay ?? 0,
      condition: condition != null
          ? mapToConditionModel(condition)
          : ForecastConditionModel(text: '', icon: '', code: 0),
      windMph: domain.windMph ?? 0,
      windKph: domain.windKph ?? 0,
      windDegree: domain.windDegree ?? 0,
      windDir: domain.windDir ?? '',
      pressureMb: domain.pressureMb ?? 0,
      pressureIn: domain.pressureIn ?? 0,
      precipMm: domain.precipMm ?? 0,
      precipIn: domain.precipIn ?? 0,
      humidity: domain.humidity ?? 0,
      cloud: domain.cloud ?? 0,
      feelslikeC: domain.feelslikeC ?? 0,
      feelslikeF: domain.feelslikeF ?? 0,
      windchillC: domain.windchillC ?? 0,
      windchillF: domain.windchillF ?? 0,
      heatindexC: domain.heatindexC ?? 0,
      heatindexF: domain.heatindexF ?? 0,
      dewpointC: domain.dewpointC ?? 0,
      dewpointF: domain.dewpointF ?? 0,
      visKm: domain.visKm ?? 0,
      visMiles: domain.visMiles ?? 0,
      uv: domain.uv ?? 0,
      gustMph: domain.gustMph ?? 0,
      gustKph: domain.gustKph ?? 0,
    );
  }

  ForecastConditionModel mapToConditionModel(ForecastConditionData domain) {
    return ForecastConditionModel(
        text: domain.text ?? '',
        icon: domain.icon ?? '',
        code: domain.code ?? 0);
  }
}
// ForecastConditionState mapToConditionModel(ForecastConditionData domain) {
//   return ForecastConditionState.values.firstWhere(
//         (element) => element.code == domain.code,
//     orElse: () => ForecastConditionState.unknown,
//   );
// }
