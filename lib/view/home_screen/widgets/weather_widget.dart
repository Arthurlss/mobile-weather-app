import 'package:flutter/material.dart';

class WeatherWidget extends StatefulWidget {
  @override
  State<WeatherWidget> createState() => _WeatherWidgetState();
}

class _WeatherWidgetState extends State<WeatherWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.transparent),
      child: Center(
        child: Column(
          children: [
            Container(
                height: 250,
                width: 250,
                child: Image.asset("assets/sol_nuvem.png")),
            Text("28°",
                style: TextStyle(
                    fontSize: 50,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 10,
            ),
            Text("Precipitações",
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold)),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Max.: 31°",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold)),
                SizedBox(
                  width: 5,
                ),
                Text("Min.: 29°",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
