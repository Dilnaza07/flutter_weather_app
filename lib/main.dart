import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_weather_app/features/sity_search/data/api/sity_search_api.dart';

void main() {
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
      home: HomePage(),
    );
  }
}



class HomePage extends StatefulWidget {
  const HomePage({super.key});



  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final CitySearchApi citySearchApi = CitySearchApi();

  final searchController = TextEditingController();

  String text = '123';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(controller: searchController,
              decoration: InputDecoration(
                labelText: 'Search'
              ),),
            ),
            Text(text),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final data = await citySearchApi.fetchCurrentWeatherData(query: searchController.text);
          setState(() {
            text = data.toString();
          });
          debugPrint('DATA =>>> $data');
        },
        child: Icon(Icons.search_rounded),
      ),
    );
  }
}
