import 'package:flutter/cupertino.dart';

class WeatherProvider with ChangeNotifier {
  dynamic _data;

  get data => _data;

  void setData(item) {
    _data = item;
    notifyListeners();
  }
}
