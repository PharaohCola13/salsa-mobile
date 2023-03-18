import 'package:adobe_xd/pinned.dart';
import 'package:flutter/material.dart';
import 'package:salsa/bottom_nav.dart';
import 'package:salsa/data_fetch.dart';


class XDSunspots extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: const Color(0xffffffff),
      body: SunSpots(),
      );
  }
}