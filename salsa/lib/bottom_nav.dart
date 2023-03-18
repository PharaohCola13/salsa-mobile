import 'package:flutter/material.dart';
import './day_time.dart';
import './night_time.dart';
import './xd_atmosphere.dart';
import 'package:flutter/cupertino.dart';


class BttmNav extends StatefulWidget {
  const BttmNav({Key? key}) : super(key:key);
  @override
  State<BttmNav> createState() => BttmNavState();
}

class BttmNavState extends State<BttmNav>{
  int _selectedIndex = 0;

  final _pageOptions = [
    DayTime(),
    Atmosphere(),
    XDNightTime(),
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
        backgroundColor: const Color(0xff121212),
        // body: _pageOptions[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.wb_sunny_outlined),
              label: 'Day',
              activeIcon: Icon(Icons.wb_sunny),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.cloud_outlined),
              label: 'Weather',
              activeIcon: Icon(Icons.cloud),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.dark_mode_outlined),
              label: 'Night',
              activeIcon: Icon(Icons.dark_mode),
            ),
          ],
          backgroundColor: const Color(0xff404040),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
      )
    );
  }
}