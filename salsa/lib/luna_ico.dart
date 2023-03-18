import 'package:flutter/material.dart';
import 'package:moon_phase/moon_widget.dart';

import 'xd_planetary_positions.dart';
import 'xd_satellite_positions.dart';
import 'package:flutter/widgets.dart';


class Moon extends StatelessWidget {
  Moon({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
        children: <Widget>[
          Center(
              child: Padding(
                padding: const EdgeInsets.all(50.0),
                child: MoonWidget(
                        date: DateTime.now(),
                        resolution: 128,
                        size: 64,
                        moonColor: Colors.amber,
                        earthshineColor: Colors.blueGrey.shade900,
                      )
                    )
                  )
                ]
              );
  }
}


void _nav2planets(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => XDPlanetaryPositions()));
}

void _nav2satellite(BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => XDSatellitePositions()));
}