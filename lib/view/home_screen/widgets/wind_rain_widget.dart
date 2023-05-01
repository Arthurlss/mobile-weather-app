import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:my_weather/provider/weather_provider.dart';
import 'package:provider/provider.dart';

class WindRainWidget extends StatefulWidget {
  @override
  State<WindRainWidget> createState() => _WindRainWidgetState();
}

class _WindRainWidgetState extends State<WindRainWidget> {
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 30,
                          child: Image.asset("assets/chuva_branca.png"),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          "${_weather["cloudiness"].toString()}%",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          height: 30,
                          child: Image.asset("assets/termometro.png"),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          "${_weather["humidity"].toString()}%",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          height: 30,
                          child: Image.asset("assets/vento.png"),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          _weather["wind_speedy"],
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20),
                        )
                      ],
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
}
