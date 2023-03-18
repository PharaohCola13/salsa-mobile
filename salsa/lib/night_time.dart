import 'package:flutter/material.dart';
import 'package:salsa/bottom_nav.dart';
import './luna_ico.dart';

class XDNightTime extends StatelessWidget {
  XDNightTime({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: const Color(0xff404040)),
      backgroundColor: const Color(0xff121212),
      body: Stack(
        children: <Widget>[
          Moon(),
        ],
      ),
    );
  }
}
