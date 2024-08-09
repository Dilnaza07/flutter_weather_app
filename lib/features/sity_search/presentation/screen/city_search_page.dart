import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather_app/features/sity_search/presentation/bloc/city_search_bloc.dart';

class SearchWeatherPage extends StatelessWidget {
  const SearchWeatherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        builder: (context, state){
          if(state.isLoading){
            return const CircularProgressIndicator();
          }
          return ListView(
            children: [
              SearchTextField(),
              SearchText(),
            ],
          );
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
    }
    );
  }
}
