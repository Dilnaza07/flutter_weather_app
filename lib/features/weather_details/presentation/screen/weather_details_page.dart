import 'package:flutter/material.dart';

import '../../../sity_search/presentation/models/weather_model.dart';

class WeatherDetailsPage extends StatelessWidget {
  const WeatherDetailsPage({super.key, required this.weatherModel});

  final WeatherModel weatherModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text(weatherModel.location.name, style: TextStyle(fontSize: 30),),
        bottom: _BottomWidget(),
      ),
      body: _Body(model: weatherModel,),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.of(context).pop(weatherModel.location.country);
      },
        child: Icon(Icons.abc),),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({
    super.key, required this.model,
  });

  final WeatherModel model;
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
