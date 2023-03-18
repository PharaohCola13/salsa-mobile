import 'package:flutter/material.dart';
import './sol_img.dart';
import './bottom_nav.dart';

class DayTime extends StatefulWidget {
  const DayTime({Key? key}) : super(key: key);

  @override
  XDDayTime createState() => XDDayTime();
}
class XDDayTime extends State<DayTime>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff404040),
      ),
      backgroundColor: const Color(0xff121212),
      body: Column(
        children: <Widget>[
          Sun(),
        ],
      ),
    );
  }
}