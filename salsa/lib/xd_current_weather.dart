import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:adobe_xd/blend_mask.dart';
import 'package:salsa/bottom_nav.dart';
import './xd_atmosphere.dart';
import 'package:adobe_xd/page_link.dart';
import './xd_night_time.dart';
import 'package:flutter_svg/flutter_svg.dart';

class XDCurrentWeather extends StatelessWidget {
  XDCurrentWeather({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff121212),
      body: Stack(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(0.0, 75.0, -1.0, 0.0),
            child: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xfff3f3f3),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(75.0),
                    ),
                    border:
                        Border.all(width: 1.0, color: const Color(0xff003d41)),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 188.0, start: 20.0),
                  Pin(size: 31.0, start: 10.0),
                  child: Text(
                    'Current Weather',
                    style: TextStyle(
                      fontFamily: 'Segoe UI',
                      fontSize: 23,
                      color: const Color(0xff003d41),
                      fontWeight: FontWeight.w900,
                    ),
                    textAlign: TextAlign.center,
                    softWrap: false,
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 20.0, end: 25.0),
                  Pin(size: 279.0, start: 50.0),
                  child: BlendMask(
                    blendMode: BlendMode.darken,
                    child: Text(
                      'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.\nLorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est.',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 14,
                        color: const Color(0xff000000),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}