import 'package:dio/dio.dart';
import 'package:my_weather/provider/weather_provider.dart';
import 'package:my_weather/utils/utils.dart';
import 'package:provider/provider.dart';

class WeatherController {
  Future<void> getWeatherByCity(city, context) async {
    try {
      dynamic _dataWeather = await Dio()
          .get("https://api.hgbrasil.com/weather?key=2bccbeae&city_name=$city");

      var info = Utils.getImage(_dataWeather.data["results"]["condition_slug"]);
      Provider.of<WeatherProvider>(context, listen: false)
          .setData(_dataWeather);
      Provider.of<WeatherProvider>(context, listen: false)
          .setImage(info["image"]);
      Provider.of<WeatherProvider>(context, listen: false)
          .setColor(info["color"]);
      Provider.of<WeatherProvider>(context, listen: false)
          .setSecondColor(info["secondColor"]);
    } catch (e) {
      throw e;
    }
  }
}
