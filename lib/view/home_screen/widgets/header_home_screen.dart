import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:my_weather/controller/weather_controller.dart';
import 'package:my_weather/utils/utils.dart';

class HeaderHomeScreen extends StatefulWidget {
  @override
  State<HeaderHomeScreen> createState() => _HeaderHomeScreenState();
}

class _HeaderHomeScreenState extends State<HeaderHomeScreen> {
  List list = Utils.getListCities();

  var city = "Maceio,AL";
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.5,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: DropdownButton(
                    dropdownColor: Colors.transparent,
                    isExpanded: true,
                    underline: Container(),
                    icon: Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.white,
                    ),

                    hint: Text(
                      'Estado',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: HexColor('#424242'),
                      ),
                    ), // Not necessary for Option 1
                    value: city,
                    onChanged: (newValue) async {
                      setState(() {
                        city = newValue;
                      });

                      WeatherController _weatherController =
                          WeatherController();

                      await _weatherController.getWeatherByCity(city, context);
                    },
                    items: list.map((location) {
                      return DropdownMenuItem(
                        child: Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            new Text(location,
                                style: TextStyle(
                                  color: Colors.white,
                                )),
                          ],
                        ),
                        value: location,
                      );
                    }).toList(),
                  ),
                ),
              ),
              Icon(
                Icons.notifications,
                size: 35,
                color: Colors.white,
              )
            ],
          ),
        ],
      ),
    );
  }
}
