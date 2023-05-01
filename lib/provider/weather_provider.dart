import 'package:flutter/cupertino.dart';

class WeatherProvider with ChangeNotifier {
  dynamic _data;
  dynamic _image;
  dynamic _color;
  dynamic _secondColor;

  get data => _data;
  get image => _image;
  get color => _color;
  get secondColor => _secondColor;

  void setData(item) {
    _data = item;
    notifyListeners();
  }

  void setColor(item) {
    _color = item;
    notifyListeners();
  }

  void setImage(item) {
    _image = item;
    notifyListeners();
  }

  void setSecondColor(item) {
    _secondColor = item;
    notifyListeners();
  }
}
