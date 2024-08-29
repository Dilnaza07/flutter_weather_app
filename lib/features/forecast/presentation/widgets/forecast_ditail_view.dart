import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/forecast_bloc.dart';

class ForecastDetailView extends StatelessWidget {
  const ForecastDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ForecastBloc, ForecastState>(
        builder: (context, state) {
      final windKph = state.data?.current.windKph;
      final humidity = state.data?.current.humidity;
      final pressureIn =
          state.data?.current.pressureIn.toStringAsFixed(0);
      final precipMm = state.data?.current.precipMm;


      return Container(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            DetailViewComponent(
              iconData: Icons.wind_power,
              value: '$precipMm',
              units: 'mm',
            ),
            DetailViewComponent(
              iconData: Icons.wind_power,
              value: '$windKph',
              units: 'km/h',
            ),
            DetailViewComponent(
              iconData: Icons.water_drop,
              value: '$humidity',
              units: '%',
            ),
            DetailViewComponent(
              iconData: Icons.compress,
              value: '$pressureIn',
              units: 'мм рт.ст.',
            ),
          ],
        ),
      );
    });
  }
}

class DetailViewComponent extends StatelessWidget {
  const DetailViewComponent(
      {required this.iconData, required this.value, required this.units});

  //final String title;
  final IconData iconData;
  final String value;
  final String units;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          iconData,
          color: Colors.white,
        ),
        Text(
          units,
          style: TextStyle(color: Colors.white),
        ),
        Text(
          value,
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
