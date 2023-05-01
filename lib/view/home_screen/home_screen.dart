import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:my_weather/controller/weather_controller.dart';
import 'package:my_weather/provider/weather_provider.dart';
import 'package:my_weather/view/home_screen/widgets/header_home_screen.dart';
import 'package:my_weather/view/home_screen/widgets/next_forecast_widget.dart';
import 'package:my_weather/view/home_screen/widgets/today_weather_widget.dart';
import 'package:my_weather/view/home_screen/widgets/weather_widget.dart';
import 'package:my_weather/view/home_screen/widgets/wind_rain_widget.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  WeatherController _weatherController = WeatherController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _weatherController.getWeatherByCity("Maceio,AL", context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<WeatherProvider>(
        builder: (context, _weatherProvider, _) {
          return Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: _weatherProvider.color == null
                      ? Colors.blue
                      : HexColor(_weatherProvider.color)),
              child: _weatherProvider.data == null
                  ? Container(
                      child: Center(
                        child: CircularProgressIndicator(),
                      ),
                    )
                  : SingleChildScrollView(
                      child: Column(
                        children: [
                          HeaderHomeScreen(),
                          WeatherWidget(),
                          WindRainWidget(),
                          TodayWeatherWidget(),
                          NextForecastWidget()
                        ],
                      ),
                    ));
        },
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(gradient: getLinearGradient(true)),
          child: Consumer<WeatherProvider>(
            builder: ((context, _weatherProvider, child) {
              if (_weatherProvider.data == null) {
                return Container(
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              } else {
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      HeaderHomeScreen(),
                      WeatherWidget(),
                      WindRainWidget(),
                      TodayWeatherWidget(),
                      NextForecastWidget()
                    ],
                  ),
                );
              }
            }),
          ),
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
