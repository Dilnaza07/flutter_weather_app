import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather_app/features/sity_search/presentation/bloc/city_search_bloc.dart';

import '../widgets/forecast_weather_widget.dart';

class SearchWeatherPage extends StatelessWidget {
  const SearchWeatherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather app'),
        backgroundColor: Colors.purple[50],
      ),
      body: Center(
        child: Body(),
      ),
      floatingActionButton: SearchButton(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CitySearchBloc, CitySearchState>(
        builder: (context, state) {
      if (state.isLoading) {
        return const CircularProgressIndicator();
      }
      return Stack(children: [
        SizedBox(
          height: double.infinity,
          //  width: double.infinity,
          child: Image.network(
            'https://preview.redd.it/clouds-wallpaper-9-16-v0-49wpsw88g87c1.jpg?width=640&crop=smart&auto=webp&s=4a2cce6d6bcebf8858942a1da14cb8f00447c292',
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 150.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SearchTextField(),
              SearchText(),
              SizedBox(height: 40),
              Row(
                children: [
                  Expanded(child: _HumidityWidget()),
                  Expanded(child: _CloudyWidget()),
                  Expanded(child: _PressureWidget()),
                ],
              ),
            ],
          ),
        ),
      ]);
    });
  }
}

class SearchButton extends StatelessWidget {
  const SearchButton({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<CitySearchBloc>();

    return FloatingActionButton(
      onPressed: () => bloc.add(CitySearchDataFetched()),
      child: Icon(Icons.search_rounded),
    );
  }
}

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<CitySearchBloc>();
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        controller: bloc.searchController,
        decoration: InputDecoration(labelText: 'Search'),
      ),
    );
  }
}

class SearchText extends StatelessWidget {
  const SearchText({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CitySearchBloc, CitySearchState>(
        builder: (context, state) {
      return Text(
        state.data.toString() ?? '',
        //style: TextStyle(fontSize: 15),
      );
    });
  }
}

class _HumidityWidget extends StatelessWidget {
  const _HumidityWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CitySearchBloc, CitySearchState>(
        builder: (context, state) {
      return ForecastWeatherWidget(
        text: state.data?.current?.humidity.toString() ?? 'N/A',
        iconData: Icons.heat_pump_rounded,
      );
    });
  }
}

class _CloudyWidget extends StatelessWidget {
  const _CloudyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CitySearchBloc, CitySearchState>(
        builder: (context, state) {
      return ForecastWeatherWidget(
        text: state.data?.current?.cloud.toString() ?? 'N/A',
        iconData: Icons.cloud_rounded,
      );
    });
  }
}

class _PressureWidget extends StatelessWidget {
  const _PressureWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CitySearchBloc, CitySearchState>(
        builder: (context, state) {
      return ForecastWeatherWidget(
        text: state.data?.current?.pressureMb.toString() ?? 'N/A',
        iconData: Icons.compress,
      );
    });
  }
}
