import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../weather_details/presentation/screen/weather_details_page.dart';
import '../bloc/forecast_bloc.dart';
import '../widgets/forecast_ditail_view.dart';

class ForecastScreen extends StatelessWidget {
  const ForecastScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text(
          'Weather Forecast App',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue[800],
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.location_on_rounded,
            color: Colors.white,
            size: 40,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.location_city,
                color: Colors.white,
                size: 40,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: ListView(children: [
          SizedBox(height: 30),
          SearchTextField(),
          SizedBox(height: 30),
          ForecastLocation(),
          SizedBox(height: 30),
          ForecastHour(),
          SizedBox(height: 30),
          // ForecastDetailView(),
        ]),
      ),
      floatingActionButton: SearchButton(),
    );
  }
}

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<ForecastBloc>();
    return TextField(
      controller: bloc.searchController,
      decoration: InputDecoration(
        labelText: 'Search Location...',
        labelStyle: TextStyle(color: Colors.white, fontSize: 20),
        suffixIcon: Icon(Icons.search, color: Colors.white), // Иконка слева
      ),
      style: TextStyle(color: Colors.white), // Цвет текста
    );
  }
}

class ForecastLocation extends StatelessWidget {
  const ForecastLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ForecastBloc, ForecastState>(builder: (context, state) {
      final location = state.data?.location;
      final current = state.data?.current;
      final forecast = state.data?.forecast.forecastDay.toList();
      final date = forecast?[0].date;
      final temp = current?.tempC.toStringAsFixed(0);
      final feelsLike = current?.feelslikeC;
      final condition = current?.condition.text;
      final icon = current?.condition.icon;
      final tempMin = forecast?[0].day.mintempC;
      final tempMax = forecast?[0].day.maxtempC;
      return Container(
        child: Column(
          children: [
            Text(
              '${location?.name},${location?.country}',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              '${date}',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '${temp}°',
                  style: TextStyle(color: Colors.white, fontSize: 55),
                ),
                Image.network(
                  'https:${icon}',
                ),
              ],
            ),
            Text(
              '${condition}',
              style: TextStyle(
                  color: Colors.lightBlue[50],
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'H:${tempMax}° L:${tempMin}°',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            Text(
              'Feels like ${feelsLike}°',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ],
        ),
      );
    });
  }
}

class ForecastHour extends StatelessWidget {
  const ForecastHour({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ForecastBloc, ForecastState>(
      builder: (context, state) {
        final temp = state.data?.forecast.forecastDay[0].hour[0].tempC;
        final time =
            state.data?.forecast.forecastDay[0].hour[0].time.split(' ')[1];
        final icon = state.data?.forecast.forecastDay[0].hour[0].condition.icon;

        return Container(
          color: Colors.blue[700],
          width: 390,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      'Houry Forecast',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
              Divider(),
              Row(
                children: [
                  Container(
                    width: 390,
                    height: 140,
                    color: Colors.blue[700],
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => Container(
                              width: 60,
                              height: 140,
                              color: Colors.blue.withOpacity(0.7),
                              child: Column(
                                children: [
                                  Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Text(
                                        '$time',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  Center(
                                    child: Image.network('https:$icon'),
                                  ),
                                  Center(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        '$temp°',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                        separatorBuilder: (context, index) => SizedBox(
                              width: 2,
                            ),
                        itemCount: 24),
                  )
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}

class ForecastHourCard extends StatelessWidget {
  final int index;
  final ForecastState state;

  const ForecastHourCard({super.key, required this.index, required this.state});

  @override
  Widget build(BuildContext context) {
    final temp = state.data?.forecast.forecastDay[0].hour[index].tempC;
    final time =
        state.data?.forecast.forecastDay[0].hour[index].time.split(' ')[1];
    final icon = state.data?.forecast.forecastDay[0].hour[index].condition.icon;
    return Column(
      children: [
        Center(
          child: Text('time'),
        ),
        Center(
          child: Image.network('https: icon'),
        ),
        Center(
          child: Text('temp°'),
        ),
      ],
    );
  }
}

class SearchButton extends StatelessWidget {
  const SearchButton({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<ForecastBloc>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 49.0),
          child: BlocBuilder<ForecastBloc, ForecastState>(
            builder: (context, state) {
              return FloatingActionButton(
                onPressed: () async {
                  final data = state.data;
                  if (data == null) {
                    return;
                  }
                  // Navigator.of(context)
                  //     .push(MaterialPageRoute(
                  //         builder: (context) => WeatherDetailsPage(
                  //               weatherModel: data,
                  //             )))
                  //     .then((value) {
                  //   if (value is String) {
                  //     debugPrint(value);
                  //   }
                  // });

                  final result =
                      await Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => WeatherDetailsPage(
                                forecastModel: data,
                              )));

                  if (result is String) {
                    debugPrint(result);
                  }
                },
                child: Icon(Icons.transit_enterexit),
              );
            },
          ),
        ),
        FloatingActionButton(
          heroTag: 'search',
          onPressed: () => bloc.add(ForecastDataFetched()),
          child: Icon(Icons.search),
        ),
      ],
    );
  }
}
