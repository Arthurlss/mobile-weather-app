import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:my_weather/provider/weather_provider.dart';
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
                          "Mar,9",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 25),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        getDayWeather(),
                        getDayWeather(),
                        getDayWeather(),
                        getDayWeather(),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                    color: HexColor("#0c3888"),
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
