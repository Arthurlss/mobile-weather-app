import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:my_weather/provider/weather_provider.dart';
import 'package:provider/provider.dart';

class NextForecastWidget extends StatefulWidget {
  @override
  State<NextForecastWidget> createState() => _NextForecastWidgetState();
}

class _NextForecastWidgetState extends State<NextForecastWidget> {
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
                          "Next Forecast",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 25),
                        ),
                        Container(
                            height: 40,
                            child: Image.asset("assets/calender.png"))
                      ],
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        getOtherDayWeather(),
                        SizedBox(
                          height: 5,
                        ),
                        getOtherDayWeather(),
                        SizedBox(
                          height: 5,
                        ),
                        getOtherDayWeather(),
                        SizedBox(
                          height: 5,
                        ),
                        getOtherDayWeather(),
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

  Widget getOtherDayWeather() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            "Monday",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),
          ),
          SizedBox(
            height: 22,
          ),
          Container(width: 60, child: Image.asset("assets/nuvem.png")),
          SizedBox(
            height: 22,
          ),
          Text(
            "30°C",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),
          ),
          Text(
            "21°C",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.grey, fontSize: 20),
          ),
        ],
      ),
    );
  }
}
