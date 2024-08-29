import 'package:flutter/material.dart';

class ForecastWeatherWidget extends StatelessWidget {
  const ForecastWeatherWidget({super.key, required this.text, required this.iconData});

  final String text;

  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Text(
                text,
                style: const TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Icon(iconData),
          ],
        ),
      ),
    );
  }
}