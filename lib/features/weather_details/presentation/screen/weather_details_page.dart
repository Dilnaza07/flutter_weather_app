import 'package:flutter/material.dart';
import 'package:flutter_weather_app/features/forecast/presentation/models/forecast_model.dart';

import '../../../sity_search/presentation/models/weather_model.dart';

class WeatherDetailsPage extends StatelessWidget {
  const WeatherDetailsPage({super.key, required this.forecastModel});

  final ForecastModel forecastModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text(forecastModel.location.name, style: TextStyle(fontSize: 30),),
        bottom: _BottomWidget(),
      ),
      body: _Body(model: forecastModel,),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.of(context).pop(forecastModel.location.country);
      },
        child: Icon(Icons.abc),),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({
    super.key, required this.model,
  });

  final ForecastModel model;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Second screen: ${model.location.name}', style: TextStyle(fontSize: 40),),
    );
  }
}


class _BottomWidget extends StatelessWidget implements PreferredSizeWidget{
  const _BottomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider();
  }

  @override
  Size get preferredSize => Size(double.infinity, 40);
}
