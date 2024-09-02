import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../../core/utils/date_utils.dart';
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
      body: Body(),
      floatingActionButton: SearchButton(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isLoading = context.select((ForecastBloc bloc) => bloc.state.isLoading);

    if (isLoading) {
      return Center(
        child: CircularProgressIndicator(),
      );
    }

    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: ListView(children: [
        SizedBox(height: 10),
        SearchTextField(),
        SizedBox(height: 30),
        ForecastLocation(),
        SizedBox(height: 30),
        ForecastHour(),
        SizedBox(height: 10),
        ForecastWeek(),
        // ForecastDetailView(),
      ]),
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
      final data = state.data;
      if (data == null) return SizedBox();
      final location = data.location;
      final current = data.current;
      final forecast = data.forecast.forecastDay.toList();
      final date = data.current.lastUpdated;
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
              style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
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
                if (icon != null)
                  Image.network(
                    'https:${icon}',
                  ),
              ],
            ),
            Text(
              '${condition}',
              style:
                  TextStyle(color: Colors.lightBlue[50], fontSize: 20, fontWeight: FontWeight.bold),
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
        // final temp = state.data?.forecast.forecastDay[0].hour[0].tempC;
        // final time =
        //     state.data?.forecast.forecastDay[0].hour[0].time.split(' ')[1];
        // final icon = state.data?.forecast.forecastDay[0].hour[0].condition.icon;

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
                    child: Row(
                      children: [
                        Icon(
                          Icons.watch_later_outlined,
                          color: Colors.white,
                        ),
                        Text(
                          ' Houry Forecast',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
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
                              child: ForecastHourCard(
                                state: state,
                                index: index,
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
  const ForecastHourCard({
    super.key,
    required this.state,
    required this.index,
  });

  final ForecastState state;
  final int index;

  @override
  Widget build(BuildContext context) {
    final data = state.data;
    if (data == null) return SizedBox();
    final temp = data.forecast.forecastDay[0].hour[index].tempC;
    final time = data.forecast.forecastDay[0].hour[index].time.split(' ')[1];
    final icon = data.forecast.forecastDay[0].hour[index].condition.icon;
    return Column(
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
              style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}

class ForecastWeek extends StatelessWidget {
  const ForecastWeek({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ForecastBloc, ForecastState>(
      builder: (context, state) {
        final data = state.data;
        if (data == null) return SizedBox();

        final forecastDay = data.forecast.forecastDay;

        return Container(
          color: Colors.blue[700],
          width: 390,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.calendar_month_outlined,
                    color: Colors.white,
                  ),
                  Text(
                    ' 3-Day Weather Forecast',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              ForecastDayCard(index: 0, state: state),
              ForecastDayCard(index: 1, state: state),
              ForecastDayCard(index: 2, state: state),
            ],
          ),
        );
      },
    );
  }
}

class ForecastDayCard extends StatelessWidget {
  const ForecastDayCard({
    super.key,
    required this.index,
    required this.state,
  });

  final int index;
  final ForecastState state;

  @override
  Widget build(BuildContext context) {
    final data = state.data;
    if (data == null) return SizedBox();

    final date = data.forecast.forecastDay[index].date;
    // String dayOfWeek = DateFormat('EEEE').format(date);

    final icon = data.forecast.forecastDay[index].day.condition?.icon;
    final maxTemp = data.forecast.forecastDay[index].day.maxtempC;
    final minTemp = data.forecast.forecastDay[index].day.mintempC;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          '$date',
          style: TextStyle(color: Colors.white),
        ),
        Image.network(
          'https:$icon',
          height: 50,
        ),
        Text(
          'max: $maxTemp',
          style: TextStyle(color: Colors.white),
        ),
        Text(
          'min: $minTemp',
          style: TextStyle(color: Colors.white),
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

                  final result = await Navigator.of(context).push(MaterialPageRoute(
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
