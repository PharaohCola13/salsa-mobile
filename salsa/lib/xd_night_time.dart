import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './xd_atmosphere.dart';
import 'package:adobe_xd/page_link.dart';
import './xd_planetary_positions.dart';
import './xd_satellite_positions.dart';
import 'package:flutter_svg/flutter_svg.dart';

class XDNightTime extends StatelessWidget {
  XDNightTime({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: const Color(0xff121212),
              border: Border.all(width: 1.0, color: const Color(0xff707070)),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 1.0, middle: 0.5006),
            child: SvgPicture.string(
              _svg_blpl6,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 56.0, end: 56.0),
            Pin(size: 300.0, start: 56.0),
            child: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xff080041),
                    borderRadius: BorderRadius.circular(1000.0),
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 70.0, end: -1.0),
            child: Stack(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Pinned.fromPins(
                          Pin(startFraction: 0.0, endFraction: 0.0),
                          Pin(size: 70.0, end: 0.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xff404040),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(500.0),
                                topRight: Radius.circular(500.0),
                              ),
                            ),
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 266.0, middle: 0.5),
                          Pin(start: 0.7, end: 1.0),
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromPins(
                                Pin(size: 70.0, start: 0.0),
                                Pin(start: 0.8, end: 0.5),
                                child: Stack(
                                  children: <Widget>[
                                    Pinned.fromPins(
                                      Pin(startFraction: 0.0, endFraction: 0.0),
                                      Pin(size: 67.0, end: 0.0),
                                      child: Container(
                                        color: const Color(0xff404040),
                                      ),
                                    ),
                                    Pinned.fromPins(
                                      Pin(size: 23.0, middle: 0.4894),
                                      Pin(size: 16.0, end: 6.5),
                                      child: Text(
                                        'Day',
                                        style: TextStyle(
                                          fontFamily: 'Segoe UI',
                                          fontSize: 12,
                                          color: const Color(0xffffffff),
                                          fontWeight: FontWeight.w900,
                                        ),
                                        softWrap: false,
                                      ),
                                    ),
                                    Pinned.fromPins(
                                      Pin(size: 24.0, middle: 0.5),
                                      Pin(size: 24.0, start: 9.5),
                                      child:
                                          // Adobe XD layer: 'brightness_5_white_…' (group)
                                          Stack(
                                        children: <Widget>[
                                          SizedBox.expand(
                                              child: SvgPicture.string(
                                            _svg_eterkn,
                                            allowDrawingOutsideViewBox: true,
                                            fit: BoxFit.fill,
                                          )),
                                          Padding(
                                            padding: EdgeInsets.all(0.7),
                                            child: SizedBox.expand(
                                                child: SvgPicture.string(
                                              _svg_lnhdf,
                                              allowDrawingOutsideViewBox: true,
                                              fit: BoxFit.fill,
                                            )),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Pinned.fromPins(
                                Pin(size: 70.0, middle: 0.5044),
                                Pin(start: 0.0, end: 0.0),
                                child: PageLink(
                                  links: [
                                    PageLinkInfo(
                                      transition: LinkTransition.Fade,
                                      ease: Curves.linear,
                                      duration: 0.0,
                                      pageBuilder: () => XDAtmosphere(),
                                    ),
                                  ],
                                  child: Stack(
                                    children: <Widget>[
                                      Pinned.fromPins(
                                        Pin(
                                            startFraction: 0.0,
                                            endFraction: 0.0),
                                        Pin(size: 68.3, end: 0.0),
                                        child: SvgPicture.string(
                                          _svg_rjq2qv,
                                          allowDrawingOutsideViewBox: true,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment(-0.022, -0.492),
                                        child: SizedBox(
                                          width: 24.0,
                                          height: 16.0,
                                          child: SvgPicture.string(
                                            _svg_pi8r3g,
                                            allowDrawingOutsideViewBox: true,
                                          ),
                                        ),
                                      ),
                                      Pinned.fromPins(
                                        Pin(size: 50.0, start: 9.1),
                                        Pin(size: 16.0, end: 7.0),
                                        child: Text(
                                          'Weather',
                                          style: TextStyle(
                                            fontFamily: 'Segoe UI',
                                            fontSize: 12,
                                            color: const Color(0xffffffff),
                                            fontWeight: FontWeight.w900,
                                          ),
                                          softWrap: false,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Pinned.fromPins(
                                Pin(size: 70.0, end: 0.0),
                                Pin(start: 0.3, end: 1.0),
                                child: Stack(
                                  children: <Widget>[
                                    Stack(
                                      children: <Widget>[
                                        Pinned.fromPins(
                                          Pin(
                                              startFraction: 0.0,
                                              endFraction: 0.0),
                                          Pin(size: 67.0, end: 0.0),
                                          child: SvgPicture.string(
                                            _svg_nam8zq,
                                            allowDrawingOutsideViewBox: true,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Pinned.fromPins(
                                      Pin(size: 28.0, middle: 0.5),
                                      Pin(size: 14.0, end: 8.0),
                                      child: Text(
                                        'Night',
                                        style: TextStyle(
                                          fontFamily: 'Segoe UI',
                                          fontSize: 10,
                                          color: const Color(0xffffffff),
                                          fontWeight: FontWeight.w900,
                                        ),
                                        softWrap: false,
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment(0.0, -0.349),
                                      child: SizedBox(
                                        width: 24.0,
                                        height: 24.0,
                                        child: SvgPicture.string(
                                          _svg_lyh1tv,
                                          allowDrawingOutsideViewBox: true,
                                        ),
                                      ),
                                    ),
                                    Pinned.fromPins(
                                      Pin(size: 24.0, middle: 0.5),
                                      Pin(size: 24.0, start: 10.0),
                                      child:
                                          // Adobe XD layer: 'dark_mode_white_24d…' (group)
                                          Stack(
                                        children: <Widget>[
                                          Container(
                                            decoration: BoxDecoration(),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.all(3.0),
                                            child: SizedBox.expand(
                                                child: SvgPicture.string(
                                              _svg_vgxqrx,
                                              allowDrawingOutsideViewBox: true,
                                              fit: BoxFit.fill,
                                            )),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 184.0, start: 22.0),
            Pin(size: 51.0, middle: 0.5942),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.linear,
                  duration: 0.0,
                  pageBuilder: () => XDPlanetaryPositions(),
                ),
              ],
              child: Stack(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          color: const Color(0xff00e6ff),
                          borderRadius: BorderRadius.circular(100.0),
                        ),
                      ),
                      Align(
                        alignment: Alignment(0.248, 0.0),
                        child: SizedBox(
                          width: 83.0,
                          height: 31.0,
                          child: Text(
                            'Planets',
                            style: TextStyle(
                              fontFamily: 'Segoe UI',
                              fontSize: 23,
                              color: const Color(0xff121212),
                              fontWeight: FontWeight.w900,
                            ),
                            softWrap: false,
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 24.0, start: 19.0),
                        Pin(size: 24.0, middle: 0.5185),
                        child:
                            // Adobe XD layer: 'public_black_24dp' (group)
                            Stack(
                          children: <Widget>[
                            SizedBox.expand(
                                child: SvgPicture.string(
                              _svg_eterkn,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            )),
                            Padding(
                              padding: EdgeInsets.all(2.0),
                              child: SizedBox.expand(
                                  child: SvgPicture.string(
                                _svg_roqyi,
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              )),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 184.0, start: 22.0),
            Pin(size: 51.0, middle: 0.7056),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.linear,
                  duration: 0.0,
                  pageBuilder: () => XDSatellitePositions(),
                ),
              ],
              child: Stack(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(size: 24.0, start: 17.0),
                        Pin(size: 24.0, middle: 0.4816),
                        child:
                            // Adobe XD layer: 'satellite_alt_black…' (group)
                            Stack(
                          children: <Widget>[
                            Stack(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Stack(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              color: const Color(0xff00e6ff),
                              borderRadius: BorderRadius.circular(100.0),
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(size: 103.0, end: 20.0),
                            Pin(size: 31.0, middle: 0.5),
                            child: Text(
                              'Satellites',
                              style: TextStyle(
                                fontFamily: 'Segoe UI',
                                fontSize: 23,
                                color: const Color(0xff121212),
                                fontWeight: FontWeight.w900,
                              ),
                              softWrap: false,
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(size: 23.0, start: 17.0),
                            Pin(size: 23.0, middle: 0.4643),
                            child: SvgPicture.string(
                              _svg_ky5nu,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_blpl6 =
    '<svg viewBox="0.0 389.0 412.0 1.0" ><path transform="translate(0.0, 389.0)" d="M 0 0 L 412 0" fill="none" stroke="#080041" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_eterkn =
    '<svg viewBox="0.0 0.0 24.0 24.0" ><path  d="M 0 0 L 24 0 L 24 24 L 0 24 L 0 0 Z" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_lnhdf =
    '<svg viewBox="0.7 0.7 22.6 22.6" ><path  d="M 20 15.3100004196167 L 23.30999946594238 12 L 20 8.689999580383301 L 20 4 L 15.30999946594238 4 L 12 0.6899999976158142 L 8.689999580383301 4 L 4 4 L 4 8.690000534057617 L 0.6899999976158142 12 L 4 15.3100004196167 L 4 20 L 8.690000534057617 20 L 12 23.30999946594238 L 15.3100004196167 20 L 20 20 L 20 15.30999946594238 Z M 12 18 C 8.690000534057617 18 6 15.30999946594238 6 12 C 6 8.690000534057617 8.690000534057617 6 12 6 C 15.30999946594238 6 18 8.690000534057617 18 12 C 18 15.30999946594238 15.30999946594238 18 12 18 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_rjq2qv =
    '<svg viewBox="171.9 709.7 70.0 68.3" ><path transform="translate(171.85, 709.71)" d="M 0 0 L 70 0 L 70 68.2935791015625 L 0 68.2935791015625 L 0 0 Z" fill="#404040" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_pi8r3g =
    '<svg viewBox="194.3 723.0 24.0 16.0" ><path transform="translate(194.35, 719.0)" d="M 19.35000038146973 10.03999996185303 C 18.67000007629395 6.590000152587891 15.64000034332275 4 12 4 C 9.109999656677246 4 6.599999904632568 5.639999866485596 5.349999904632568 8.039999961853027 C 2.339999914169312 8.359999656677246 0 10.90999984741211 0 14 C 0 17.30999946594238 2.690000057220459 20 6 20 L 19 20 C 21.76000022888184 20 24 17.76000022888184 24 15 C 24 12.35999965667725 21.95000076293945 10.21999931335449 19.35000038146973 10.03999996185303 Z M 19 18 L 6 18 C 3.789999961853027 18 2 16.20999908447266 2 14 C 2 11.79000091552734 3.789999961853027 10 6 10 L 6.710000038146973 10 C 7.369999885559082 7.690000057220459 9.479999542236328 6 12 6 C 15.03999996185303 6 17.5 8.460000038146973 17.5 11.5 L 17.5 12 L 19 12 C 20.65999984741211 12 22 13.34000015258789 22 15 C 22 16.65999984741211 20.65999984741211 18 19 18 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_nam8zq =
    '<svg viewBox="236.0 595.0 70.0 67.0" ><path transform="translate(236.0, 595.0)" d="M 0 0 L 70 0 L 70 67 L 0 67 L 0 0 Z" fill="#404040" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_vgxqrx =
    '<svg viewBox="3.0 3.0 18.0 18.0" ><path  d="M 12 3 C 7.03000020980835 3 3 7.03000020980835 3 12 C 3 16.96999931335449 7.03000020980835 21 12 21 C 16.96999931335449 21 21 16.96999931335449 21 12 C 21 11.53999996185303 20.95999908447266 11.07999992370605 20.89999961853027 10.64000034332275 C 19.92000007629395 12.01000022888184 18.31999969482422 12.90000057220459 16.5 12.90000057220459 C 13.52000045776367 12.90000057220459 11.10000038146973 10.48000049591064 11.10000038146973 7.500000476837158 C 11.10000038146973 5.690000534057617 11.99000072479248 4.080000400543213 13.36000061035156 3.100000381469727 C 12.92000007629395 3.039999961853027 12.46000003814697 3 12 3 L 12 3 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_lyh1tv =
    '<svg viewBox="260.0 606.0 24.0 24.0" ><path transform="translate(260.0, 606.0)" d="M 0 0 L 24 0 L 24 24 L 0 24 L 0 0 Z" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_roqyi =
    '<svg viewBox="2.0 2.0 20.0 20.0" ><path  d="M 12 2 C 6.480000019073486 2 2 6.480000019073486 2 12 C 2 17.52000045776367 6.480000019073486 22 12 22 C 17.52000045776367 22 22 17.52000045776367 22 12 C 22 6.479999542236328 17.52000045776367 2 12 2 Z M 11 19.93000030517578 C 7.050000190734863 19.44000053405762 4 16.07999992370605 4 12 C 4 11.38000011444092 4.079999923706055 10.78999996185303 4.210000038146973 10.21000003814697 L 9 15 L 9 16 C 9 17.10000038146973 9.899999618530273 18 11 18 L 11 19.93000030517578 Z M 17.89999961853027 17.38999938964844 C 17.63999938964844 16.57999992370605 16.89999961853027 15.99999904632568 16 15.99999904632568 L 15 15.99999904632568 L 15 12.99999904632568 C 15 12.44999885559082 14.55000019073486 11.99999904632568 14 11.99999904632568 L 8 11.99999904632568 L 8 9.999999046325684 L 10 9.999999046325684 C 10.55000019073486 9.999999046325684 11 9.549999237060547 11 8.999999046325684 L 11 7 L 13 7 C 14.10000038146973 7 15 6.099999904632568 15 5 L 15 4.590000152587891 C 17.93000030517578 5.78000020980835 20 8.649999618530273 20 12 C 20 14.07999992370605 19.20000076293945 15.97000026702881 17.89999961853027 17.38999938964844 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ky5nu =
    '<svg viewBox="39.0 445.0 23.0 23.0" ><path transform="translate(39.0, 445.0)" d="M 15.4399995803833 0.5899999737739563 L 12.25999927520752 3.769999980926514 C 11.47999954223633 4.550000190734863 11.47999954223633 5.819999694824219 12.25999927520752 6.599999904632568 L 13.49999904632568 7.840000152587891 L 12.78999900817871 8.550000190734863 L 11.55000019073486 7.300000190734863 C 10.77000045776367 6.520000457763672 9.5 6.520000457763672 8.720000267028809 7.300000190734863 L 7.300000190734863 8.720000267028809 C 6.520000457763672 9.5 6.520000457763672 10.77000045776367 7.300000190734863 11.55000019073486 L 8.539999961853027 12.78999996185303 L 7.829999923706055 13.5 L 6.599999904632568 12.25 C 5.819999694824219 11.47000026702881 4.550000190734863 11.47000026702881 3.769999980926514 12.25 L 0.5899999141693115 15.43000030517578 C -0.190000057220459 16.21000099182129 -0.190000057220459 17.47999954223633 0.5899999141693115 18.26000022888184 L 4.130000114440918 21.79999923706055 C 4.909999847412109 22.57999992370605 6.180000305175781 22.57999992370605 6.960000038146973 21.79999923706055 L 10.14000034332275 18.61999893188477 C 10.92000007629395 17.83999824523926 10.92000007629395 16.56999969482422 10.14000034332275 15.78999900817871 L 8.90000057220459 14.54999923706055 L 9.610000610351562 13.83999919891357 L 10.85000038146973 15.07999897003174 C 11.63000011444092 15.85999870300293 12.90000057220459 15.85999870300293 13.68000030517578 15.07999897003174 L 15.09000015258789 13.66999912261963 C 15.86999988555908 12.88999938964844 15.86999988555908 11.61999893188477 15.09000015258789 10.83999919891357 L 13.84000015258789 9.600000381469727 L 14.55000019073486 8.890000343322754 L 15.78999996185303 10.13000011444092 C 16.56999969482422 10.90999984741211 17.84000015258789 10.90999984741211 18.61999893188477 10.13000011444092 L 21.79999923706055 6.949999809265137 C 22.57999992370605 6.170000076293945 22.57999992370605 4.899999618530273 21.79999923706055 4.119999885559082 L 18.2599983215332 0.5799999237060547 C 17.47999954223633 -0.2000000029802322 16.21999931335449 -0.2000000029802322 15.4399995803833 0.5899999737739563 Z M 6.599999904632568 19.31999969482422 L 5.539999961853027 20.3799991607666 L 2 16.85000038146973 L 3.059999942779541 15.79000091552734 L 6.599999904632568 19.31999969482422 Z M 8.720000267028809 17.20000076293945 L 7.660000324249268 18.26000022888184 L 4.12000036239624 14.72000026702881 L 5.180000305175781 13.65999984741211 L 8.720000267028809 17.20000076293945 Z M 18.26000022888184 7.659999847412109 L 17.20000076293945 8.720000267028809 L 13.66000080108643 5.180000305175781 L 14.72000122070312 4.12000036239624 L 18.26000022888184 7.659999847412109 Z M 20.3799991607666 5.539999961853027 L 19.31999969482422 6.599999904632568 L 15.77999973297119 3.059999942779541 L 16.85000038146973 2 L 20.3799991607666 5.539999961853027 Z M 14 21 L 14 23 C 18.96999931335449 23 23 18.96999931335449 23 14 L 21 14 C 21 17.8700008392334 17.8700008392334 21 14 21 Z M 14 17 L 14 19 C 16.76000022888184 19 19 16.76000022888184 19 14 L 17 14 C 17 15.65999984741211 15.65999984741211 17 14 17 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
