import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class HeaderHomeScreen extends StatefulWidget {
  @override
  State<HeaderHomeScreen> createState() => _HeaderHomeScreenState();
}

class _HeaderHomeScreenState extends State<HeaderHomeScreen> {
  List list = ["Joao", "maria", "jose"];
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
                width: MediaQuery.of(context).size.width * 0.4,
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
                    value: "Joao",
                    onChanged: (newValue) {},
                    items: list.map((location) {
                      return DropdownMenuItem(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Colors.white,
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
