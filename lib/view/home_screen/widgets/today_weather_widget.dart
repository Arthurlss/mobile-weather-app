import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:my_weather/provider/weather_provider.dart';
import 'package:my_weather/utils/utils.dart';
import 'package:provider/provider.dart';

class TodayWeatherWidget extends StatefulWidget {
  @override
  State<TodayWeatherWidget> createState() => _TodayWeatherWidgetState();
}

class _TodayWeatherWidgetState extends State<TodayWeatherWidget> {
  @override
  Widget build(BuildContext context) {
    return Consumer<WeatherProvider>(
      builder: (context, _weatherProvider, _) {
        var _weather = _weatherProvider.data.data["results"];
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Container(
                padding: EdgeInsets.all(20),
                width: double.infinity,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Today",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 25),
                        ),
                        Text(
                          Utils.getDataFormated(),
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 25),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Sunrise ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20),
                        ),
                        Text(
                          _weather["sunrise"],
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Sunset ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20),
                        ),
                        Text(
                          _weather["sunset"],
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                    color: HexColor(_weatherProvider.secondColor),
                    borderRadius: BorderRadius.circular(20)),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget getDayWeather() {
    return Container(
      width: 80,
      child: Column(
        children: [
          Text(
            "28°C",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white, fontSize: 25),
          ),
          SizedBox(
            height: 22,
          ),
          Container(width: 60, child: Image.asset("assets/nuvem.png")),
          SizedBox(
            height: 22,
          ),
          Text(
            "18:00",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white, fontSize: 25),
          ),
        ],
      ),
    );
  }
}
