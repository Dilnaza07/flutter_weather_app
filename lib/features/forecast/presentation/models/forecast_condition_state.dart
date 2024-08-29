enum ForecastConditionState {
  sunny(code: 1000, weatherIcon: 'assets/icons/ic_clear_day.svg'),
  partlyCloudy(
      code: 1003, weatherIcon: 'assets/icons/ic_partly_cloudy_day.svg'),
  cloudy(code: 1006, weatherIcon: 'assets/icons/ic_cloudy.svg'),
  overcast(code: 1009, weatherIcon: 'assets/icons/ic_overcast.svg'),
  mist(code: 1030, weatherIcon: 'assets/icons/ic_overcast.svg'),
  patchyRainPossible(code: 1063, weatherIcon: 'assets/icons/ic_showers.svg'),
  patchySnowPossible(code: 1066, weatherIcon: 'assets/icons/ic_snow.svg'),
  patchySleetPossible(code: 1069, weatherIcon: 'assets/icons/ic_sleet.svg'),
  patchyFreezingDrizzlePossible(code: 1072, weatherIcon:'assets/icons/ic_sleet.svg'),
  thunderyOutbreaksPossible(code: 1087, weatherIcon:'assets/icons/ic_thunderstorm_showers.svg'),
  blowingSnow(code: 1114, weatherIcon:'assets/icons/ic_snow.svg'),
  blizzard(code: 1117, weatherIcon:'assets/icons/ic_windy.svg'),
  fog(code: 1135, weatherIcon:'assets/icons/ic_fog.svg'),
  freezingFog(code: 1147, weatherIcon:'assets/icons/ic_fog.svg'),
  patchyLightDrizzle(code: 1150, weatherIcon:'assets/icons/ic_showers.svg'),
  lightDrizzle(code: 1153, weatherIcon:'assets/icons/ic_showers.svg'),
  freezingDrizzle(code: 1168, weatherIcon: 'assets/icons/ic_sleet.svg'),
  heavyFreezingDrizzle(code: 1171, weatherIcon: 'assets/icons/ic_heavy_sleet.svg'),
  patchyLightRain(code: 1180, weatherIcon: 'assets/icons/ic_showers.svg'),
  lightRain(code: 1183, weatherIcon:'assets/icons/ic_showers.svg' ),
  moderateRainAtTime(code: 1186, weatherIcon: 'assets/icons/ic_showers.svg'),
  moderateRain(code: 1189, weatherIcon: 'assets/icons/ic_showers.svg'),
  heavyRainAtTimes(code: 1192, weatherIcon: 'assets/icons/ic_heavy_showers.svg'),
  heavyRain(code: 1195, weatherIcon: 'assets/icons/ic_heavy_showers.svg'),
  lightFreezingRain(code: 1198, weatherIcon: 'assets/icons/ic_sleet.svg'),
  moderateOrHeavyFreezingRain(code: 1201, weatherIcon:'assets/icons/ic_sleet.svg' ),
  lightSleet(code: 1204, weatherIcon: 'assets/icons/ic_sleet.svg'),
  moderateOrHeavySleet(code: 1207, weatherIcon: 'assets/icons/ic_heavy_sleet.svg'),
  patchyLightSnow(code: 1210, weatherIcon: 'assets/icons/ic_snow.svg'),
  lightSnow(code: 1213, weatherIcon:'assets/icons/ic_snow.svg'),
  patchyModerateSnow(code: 1216, weatherIcon:'assets/icons/ic_snow.svg' ),
  moderateSnow(code: 1219, weatherIcon:'assets/icons/ic_snow.svg' ),
  patchyHeavySnow(code: 1222, weatherIcon: 'assets/icons/ic_heavy_snow.svg'),
  heavySnow(code: 1225, weatherIcon: 'assets/icons/ic_heavy_snow.svg'),
  icePellets(code: 1237, weatherIcon: 'assets/icons/ic_snow.svg'),
  lightRainShower(code: 1240, weatherIcon: 'assets/icons/ic_showers.svg'),
  moderateOrHeavyRainShower(code: 1243, weatherIcon: 'assets/icons/ic_heavy_showers.svg'),
  torrentialRainShower(code: 1246, weatherIcon:'assets/icons/ic_heavy_showers.svg' ),
  lightSleetShowers(code: 1249, weatherIcon:'assets/icons/ic_sleet.svg' ),
  moderateOrHeavySleetShowers(code: 1252, weatherIcon: 'assets/icons/ic_heavy_sleet.svg'),
  lightSnowShowers(code: 1255, weatherIcon: 'assets/icons/ic_sleet.svg'),
  moderateOrHeavySnowShowers(code: 1258, weatherIcon:'assets/icons/ic_heavy_sleet.svg' ),
  lightShowersOfIcePellets(code: 1261, weatherIcon: 'assets/icons/ic_sleet.svg'),
  moderateOrHeavyShowersOfIcePellets(code: 1264, weatherIcon:'assets/icons/ic_heavy_sleet.svg' ),
  patchyLightRainOtWithThunder(code: 1273, weatherIcon:'assets/icons/ic_thunderstorm_showers.svg' ),
  moderateOrHeavyRainWithThunder(code: 1276, weatherIcon: 'assets/icons/ic_thunderstorm_showers.svg'),
  patchyLightSnowWithThunder(code: 1279, weatherIcon:'assets/icons/ic_thunderstorm_snow.svg' ),
  moderateOrHeavySnowWithThunder(code: 1282, weatherIcon:'assets/icons/ic_thunderstorm_snow.svg' ),
  unknown(code: 0, weatherIcon: '');

  const ForecastConditionState({required this.code, required this.weatherIcon});

  final int code;
  final String weatherIcon;


}