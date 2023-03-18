import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:geolocator/geolocator.dart';
import 'dart:convert' as convert;

class ForecastDis extends StatefulWidget {
  const ForecastDis({Key? key}) : super(key: key);

  @override
  ForecastState createState() => ForecastState();
}

class ForecastState extends State<ForecastDis> {
  int _selectedIndex = 0;
  String label = "";

  Future<List?> _getForecast() async {
    Position currentLocation;
    currentLocation =
    await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    final rese = await http.get(Uri.parse(
        "https://api.weather.gov/points/${currentLocation
            .latitude}%2C${currentLocation.longitude}/stations"
    ));
    final json = convert.jsonDecode(rese.body);
    String stationUrl = json["observationStations"][0];
    print(stationUrl);
    final response = await http.get(Uri.parse(stationUrl));
    final res = await http.get(
        Uri.parse(convert.jsonDecode(response.body)["properties"]["forecast"]));
    String sid = convert.jsonDecode(res.body)["properties"]["cwa"][0];
    final dis = await http.get(Uri.parse(
        "https://forecast.weather.gov/product.php?site=NWS&issuedby=${sid}&product=AFD&glossary=0"));
    if (response.statusCode == 200) {
      convert.LineSplitter ls = const convert.LineSplitter();
      List<String> lst = ls.convert(dis.body);
      final startIndex = lst.indexOf("000");
      final endIndex = lst.indexOf("</pre>");
      List afd = lst.getRange(startIndex + 4, endIndex).toList();

      List data = [];
      List list = afd.join(" ").trim().split("&&");
      for (var a in afd) {
        if (!a.contains('\$')) {
          for (var i in list) {
            data.add(i);
          }
        }
      }
      return data;
    } else {
      return null;
    }

  }
  Future<List<String>> _getForecastDiscussion() async {
      List? data = await _getForecast();
      String con = "";
      List<String> body = [];
      int i = 0;
      while (! con.contains("\$\$")) {
        var ll = data?.getRange(i, i + 1).toString().replaceAll(")", '').split(
            "...");
        con = ll![0];
        if (!con.contains("\$\$")) {
          body.add(ll[ll.length - 1]);
        } else {
          break;
        }
        i++;
      }
      return body;
  }
  Future<List<String>> _getForecastHeaders() async {
    List? data = await _getForecast();
    List<String> head = [];
    String con = "";
    int i = 0;
    while (! con.contains("\$\$")) {
      var ll = data?.getRange(i, i + 1).toString().replaceAll("(  .", '').split(
          "...");
      con = ll![0];
      if (con.contains("Area Forecast Discussion")) {
        head.add(ll[1].split(".")[1]);
      } else if (con.contains("\$\$")){
        break;
      } else if (con.contains("PREV DISCUSSION")) {
        head.add(ll[0] + " " + ll[1]);
      } else {
        head.add(con);
      }
      i++;
    }
    return head;
  }

  @override
  initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.wait([_getForecastHeaders(), _getForecastDiscussion()]),
      builder: (context,AsyncSnapshot<List<dynamic>> snapShot){
          if(snapShot.hasData) {
            List<String> options = snapShot.data![0];
            List<String> bodies = snapShot.data![1];
            void updates(String value){
              setState(() {
                _selectedIndex = options.indexOf(value);
                label = bodies[_selectedIndex];
              });
            }
            return Column(
                children: [
                  DropdownButtonFormField <String>(
                    icon: const Icon(Icons.menu),
                    dropdownColor: const Color(0xff404040),
                    onChanged: (value) {
                      setState(() {
                        _selectedIndex = options.indexOf(value!);
                      });
                    },
                    items: options.map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: TextButton(
                          child: Text(value),
                          onPressed: () {
                            updates(value);
                          },
                        ),
                      );
                    }).toList(),
                    value: options[_selectedIndex],
                  ),
                  Text(label, style: const TextStyle(color: Colors.white)),
                ]
            );
          } else if(snapShot.hasError){
            return Text("${snapShot.error}");
          }
          return const CircularProgressIndicator();
        },
    );





          }
}