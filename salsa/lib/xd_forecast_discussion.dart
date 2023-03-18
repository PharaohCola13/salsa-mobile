import 'package:adobe_xd/blend_mask.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:salsa/bottom_nav.dart';
import './location.dart';
import './xd_atmosphere.dart';

class XDForecastDiscussion extends StatelessWidget {
  XDForecastDiscussion({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff121212),
      body: ForecastDis(),
    );
  }
}
