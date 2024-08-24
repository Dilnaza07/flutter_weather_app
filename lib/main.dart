import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather_app/features/sity_search/presentation/bloc/city_search_bloc.dart';
import 'package:flutter_weather_app/features/sity_search/presentation/screen/my_city_search_screen.dart';

import 'core/di/main_module.dart';

void main() {
  initMainModule();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BlocProvider(
        create: (context) => getIt<CitySearchBloc>(),
        child: MyCitySearchScreen(),
      ),
    );
  }
}
