import 'package:flutter/material.dart';
import 'package:salsa/location.dart';

class Atmosphere extends StatefulWidget{
  @override
  XDAtmosphere createState() => XDAtmosphere();
}

class XDAtmosphere extends State<Atmosphere> {
  String dropdownValue = "Forecast Discussion";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff404040),
      ),
      backgroundColor: const Color(0xff121212),
      body: Column(
        children: <Widget>[
          Text("Forecast discussion", style: TextStyle(color: Colors.white)),
          ForecastDis(),
        ],
      ),
    );
  }
}