import 'package:flutter/material.dart';
import './data_fetch.dart';

class XDStorms extends StatelessWidget {
  XDStorms({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: const Color(0xffffffff),
      body: Storms(),
    );
  }
}
