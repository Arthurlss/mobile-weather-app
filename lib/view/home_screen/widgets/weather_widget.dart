import 'package:flutter/material.dart';
import 'package:my_weather/provider/weather_provider.dart';
import 'package:my_weather/utils/utils.dart';
import 'package:provider/provider.dart';

class WeatherWidget extends StatefulWidget {
  @override
  State<WeatherWidget> createState() => _WeatherWidgetState();
}

class _WeatherWidgetState extends State<WeatherWidget> {
  @override
  Widget build(BuildContext context) {
    return Consumer<WeatherProvider>(
      builder: (context, _weatherProvider, _) {
        var _weather = _weatherProvider.data.data["results"];
        var image = Utils.getImage(_weather["condition_slug"])["image"];
        return Container(
          decoration: BoxDecoration(color: Colors.transparent),
          child: Center(
            child: Column(
              children: [
                Container(height: 250, width: 250, child: Image.asset(image)),
                Text("${_weather["temp"].toString()}°C",
                    style: TextStyle(
                        fontSize: 50,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 10,
                ),
                Text("Precipitations",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Max.: ${_weather["forecast"][0]["max"].toString()}°",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                    SizedBox(
                      width: 5,
                    ),
                    Text("Min.: ${_weather["forecast"][0]["min"].toString()}°",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold))
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
