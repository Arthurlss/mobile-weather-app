import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:my_weather/view/home_screen/widgets/header_home_screen.dart';
import 'package:my_weather/view/home_screen/widgets/today_weather_widget.dart';
import 'package:my_weather/view/home_screen/widgets/weather_widget.dart';
import 'package:my_weather/view/home_screen/widgets/wind_rain_widget.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(gradient: getLinearGradient(true)),
        child: Column(
          children: [
            HeaderHomeScreen(),
            WeatherWidget(),
            WindRainWidget(),
            TodayWeatherWidget(),
          ],
        ),
      ),
    );
  }

  dynamic getLinearGradient(check) {
    if (check == true) {
      return LinearGradient(colors: [
        HexColor("#0e3881"),
        HexColor("#124cb4"),
        HexColor("#0d44ad"),
      ], begin: Alignment.topLeft, end: Alignment.bottomRight);
    } else {
      return LinearGradient(colors: [
        HexColor("#2eaedd"),
        HexColor("#31a5d7"),
        HexColor("#2ec7e9"),
      ], begin: Alignment.topLeft, end: Alignment.bottomRight);
    }
  }
}
