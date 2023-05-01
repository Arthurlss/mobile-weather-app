import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:my_weather/provider/weather_provider.dart';
import 'package:my_weather/utils/utils.dart';
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
                        getOtherDayWeather(_weather["forecast"][1]),
                        SizedBox(
                          height: 5,
                        ),
                        getOtherDayWeather(_weather["forecast"][2]),
                        SizedBox(
                          height: 5,
                        ),
                        getOtherDayWeather(_weather["forecast"][3]),
                        SizedBox(
                          height: 5,
                        ),
                        getOtherDayWeather(_weather["forecast"][4]),
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

  Widget getOtherDayWeather(dataDay) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: 120,
            child: Text(
              Utils.getDayString(dataDay["weekday"]),
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 20),
            ),
          ),
          SizedBox(
            height: 22,
          ),
          Container(width: 60, child: Image.asset("assets/nuvem.png")),
          SizedBox(
            height: 22,
          ),
          Text(
            "${dataDay["max"].toString()}°C",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),
          ),
          Text(
            "${dataDay["min"].toString()}°C",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.grey, fontSize: 20),
          ),
        ],
      ),
    );
  }
}
