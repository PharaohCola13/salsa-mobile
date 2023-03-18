import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class SunSpots extends StatefulWidget {
  @override
  _SunSpotsPageState createState() => _SunSpotsPageState();
}
class _SunSpotsPageState extends State<SunSpots> {
  late Future<String> postData;
  @override
  initState(){
    super.initState();
    postData=fetchAlbum();
  }
  Future<String> fetchAlbum() async {
    final response = await http
        .get(Uri.parse('https://services.swpc.noaa.gov/text/srs.txt'));

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return response.body;
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: <Widget>[
          FutureBuilder(
            future: postData,
            builder: (context,snapShot){
              if(snapShot.hasData){
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text('${snapShot.data}'),
                    ],
                  ),
                );
              }else if(snapShot.hasError){
                return Text("${snapShot.error}");
              }
              return CircularProgressIndicator();
            },
          ),
        ],
      ),
    );
  }
}

class Storms extends StatefulWidget {
  @override
  _StormPageState createState() => _StormPageState();
}
class _StormPageState extends State<Storms> {
  late Future<String> postData;
  @override
  initState(){
    super.initState();
    postData=fetchAlbum();
  }
  Future<String> fetchAlbum() async {
    final response = await http
        .get(Uri.parse('https://services.swpc.noaa.gov/text/advisory-outlook.txt'));

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return response.body;
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: <Widget>[
          FutureBuilder(
            future: postData,
            builder: (context,snapShot){
              if(snapShot.hasData){
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text('${snapShot.data}'),
                    ],
                  ),
                );
              }else if(snapShot.hasError){
                return Text("${snapShot.error}");
              }
              return CircularProgressIndicator();
            },
          ),
        ],
      ),
    );
  }
}

class CurrentWeather extends StatefulWidget {
  @override
  _CurrentWeatherPageState createState() => _CurrentWeatherPageState();
}
class _CurrentWeatherPageState extends State<CurrentWeather> {
  late Future<String> postData;
  @override
  initState(){
    super.initState();
    postData=fetchAlbum();
  }
  Future<String> fetchAlbum() async {
    final response = await http
        .get(Uri.parse('https://services.swpc.noaa.gov/text/advisory-outlook.txt'));

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return response.body;
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          FutureBuilder(
            future: postData,
            builder: (context,snapShot){
              if(snapShot.hasData){
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text('${snapShot.data}'),
                    ],
                  ),
                );
              }else if(snapShot.hasError){
                return Text("${snapShot.error}");
              }
              return CircularProgressIndicator();
            },
          ),
        ],
      ),
    );
  }
}
