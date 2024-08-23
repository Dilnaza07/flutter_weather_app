import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../weather_details/presentation/screen/weather_details_page.dart';
import '../bloc/city_search_bloc.dart';
import '../widgets/ditail_view.dart';

class MyCitySearchScreen extends StatelessWidget {
  const MyCitySearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        leading: Transform.translate(
          offset: Offset(22, 0),
          child: Image.asset(
            'assets/icons/ww.png',
          ),
        ),
        actions: [
          SizedBox(
            width: 200, // Задайте нужную ширину для текстового поля
            child: SearchTextField(),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: ListView(children: [
          SizedBox(height: 80),
          MainWeatherForecastView(),
          SizedBox(height: 30),
          DetailView(),
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
    final bloc = context.read<CitySearchBloc>();
    return TextField(
      controller: bloc.searchController,
      decoration: InputDecoration(
        labelText: 'Search Location...',
        labelStyle: TextStyle(color: Colors.white),
        suffixIcon: Icon(Icons.search, color: Colors.white), // Иконка слева
      ),
      style: TextStyle(color: Colors.white), // Цвет текста
    );
  }
}

class MainWeatherForecastView extends StatelessWidget {
  const MainWeatherForecastView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CitySearchBloc, CitySearchState>(
        builder: (context, state) {
      final tempC = state.data?.current?.tempC;
      final countryName = state.data?.location?.name;
      final date = state.data?.current?.lastUpdated;
      return Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$tempCº',
              style: TextStyle(fontSize: 50, color: Colors.white),
            ),
            SizedBox(width: 10),
            Column(
              children: [
                Text(
                  '$countryName',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
                SizedBox(width: 10),
                Text(
                  '$date',
                  style: TextStyle(fontSize: 10, color: Colors.white),
                ),
              ],
            ),
            SizedBox(width: 10),
            Icon(
              Icons.cloud_queue_sharp,
              size: 40,
              color: Colors.white,
            ),
          ],
        ),
      );
    });
  }
}

class SearchButton extends StatelessWidget {
  const SearchButton({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<CitySearchBloc>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 49.0),
          child: BlocBuilder<CitySearchBloc, CitySearchState>(
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
                                weatherModel: data,
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
          onPressed: () => bloc.add(CitySearchDataFetched()),
          child: Icon(Icons.search),
        ),
      ],
    );
  }
}
