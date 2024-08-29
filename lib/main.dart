import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/di/main_module.dart';
import 'features/forecast/presentation/bloc/forecast_bloc.dart';
import 'features/forecast/presentation/screen/my_forecast_screen.dart';

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
        create: (context) => getIt<ForecastBloc>()
          ..add(ForecastDataFetched()),
        child: MyForecastScreen(),
      ),
    );
  }
}
