import 'package:dio/dio.dart';
import 'package:my_weather/provider/weather_provider.dart';
import 'package:provider/provider.dart';

class WeatherController {
  Future<dynamic> getWeatherByCity(city, context) async {
    try {
      dynamic data = await Dio().get(
          "https://api.hgbrasil.com/weather?key=2bccbeae&city_name=SÃo_Paulo,SP");
      Provider.of<WeatherProvider>(context, listen: false).setData(data.data);

      return data;
    } catch (e) {
      throw e;
    }
  }
}
