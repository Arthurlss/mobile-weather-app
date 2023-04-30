import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class WindRainWidget extends StatefulWidget {
  @override
  State<WindRainWidget> createState() => _WindRainWidgetState();
}

class _WindRainWidgetState extends State<WindRainWidget> {
  @override
  Widget build(BuildContext context) {
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
                      "6%",
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
                      "6%",
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
                      "6%",
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
                color: HexColor("#0c3888"),
                borderRadius: BorderRadius.circular(20)),
          ),
        ],
      ),
    );
  }
}
