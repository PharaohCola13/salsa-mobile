import 'package:flutter/material.dart';
import 'package:salsa/sunspots.dart';
import 'storms.dart';
import 'package:cached_network_image/cached_network_image.dart';

var sol_label = "latest_1024_0211";


class Sun extends StatefulWidget {
  SunState createState() => SunState();
}

class SunState extends State {
  String label = "latest_1024_0211";
  String sdodropdownValue = "AIA 193";
  String dropdownValue = "Solar Activity Summary";

  @override
  void didChangeDependencies() {
    _deleteImageFromCache("https://sdo.gsfc.nasa.gov/assets/img/latest/latest_1024_0193.jpg");
    precacheImage(
        Image.network(
            "https://sdo.gsfc.nasa.gov/assets/img/latest/latest_1024_0193.jpg").image,
        context);
    _deleteImageFromCache("https://sdo.gsfc.nasa.gov/assets/img/latest/latest_1024_0304.jpg");
    precacheImage(
        Image.network(
            "https://sdo.gsfc.nasa.gov/assets/img/latest/latest_1024_0304.jpg").image,
        context);
    _deleteImageFromCache("https://sdo.gsfc.nasa.gov/assets/img/latest/latest_1024_0171.jpg");
    precacheImage(
        Image.network(
            "https://sdo.gsfc.nasa.gov/assets/img/latest/latest_1024_0171.jpg").image,
        context);
    _deleteImageFromCache("https://sdo.gsfc.nasa.gov/assets/img/latest/latest_1024_0211.jpg");
    precacheImage(
        Image.network(
            "https://sdo.gsfc.nasa.gov/assets/img/latest/latest_1024_0211.jpg").image,
        context);
    _deleteImageFromCache("https://sdo.gsfc.nasa.gov/assets/img/latest/latest_1024_0131.jpg");
    precacheImage(
        Image.network(
            "https://sdo.gsfc.nasa.gov/assets/img/latest/latest_1024_0131.jpg").image,
        context);
    _deleteImageFromCache("https://sdo.gsfc.nasa.gov/assets/img/latest/latest_1024_0335.jpg");
    precacheImage(
        Image.network(
            "https://sdo.gsfc.nasa.gov/assets/img/latest/latest_1024_0335.jpg").image,
        context);
    _deleteImageFromCache("https://sdo.gsfc.nasa.gov/assets/img/latest/latest_1024_0094.jpg");
    precacheImage(
        Image.network(
            "https://sdo.gsfc.nasa.gov/assets/img/latest/latest_1024_0094.jpg").image,
        context);
    _deleteImageFromCache("https://sdo.gsfc.nasa.gov/assets/img/latest/latest_1024_1600.jpg");
    precacheImage(
        Image.network(
            "https://sdo.gsfc.nasa.gov/assets/img/latest/latest_1024_1600.jpg").image,
        context);
    _deleteImageFromCache("https://sdo.gsfc.nasa.gov/assets/img/latest/latest_1024_1700.jpg");
    precacheImage(
        Image.network(
            "https://sdo.gsfc.nasa.gov/assets/img/latest/latest_1024_1700.jpg").image,
        context);
  }

  @override
  Widget build(BuildContext context) {
    void updates(value){
      setState(() {
        label = "latest_1024_${value.split(" ")[1].padLeft(4, '0')}";
      });
    }
    return Column(
      children: <Widget>[
        SizedBox(height: 50),
        SizedBox(
          height: 300,
          child: Image.network("https://sdo.gsfc.nasa.gov/assets/img/latest/$label.jpg"),

        ),
        DropdownButtonFormField(
          dropdownColor: const Color(0xff404040),
          value: sdodropdownValue,
          onChanged: (String? newValue){
            setState(() {
              sdodropdownValue = newValue!;
            });
          },
          icon: const Icon(Icons.menu),
          items: <String>[
            "AIA 193", "AIA 304", "AIA 171", "AIA 211",
            "AIA 131", "AIA 335", "AIA 094", "AIA 1600",
            "AIA 1700"
          ].map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: TextButton(
                  onPressed: (){
                    updates(value);
                  },
                  child: Text(value),
              ),
            );
          }).toList(),
        ),
        DropdownButtonFormField(
          dropdownColor: const Color(0xff404040),
          value: dropdownValue,
          onChanged: (String? newValue){
            setState(() {
              dropdownValue = newValue!;
            });
          },
          icon: const Icon(Icons.menu),
          items: <String>[
            "Solar Activity Summary", "Advisory Outlook"
          ].map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: TextButton(
                child: Text(value),
                onPressed: () {
                  if (value == "Solar Activity Summary"){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => XDSunspots()));
                  } else if (value == "Advisory Outlook"){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => XDStorms()));
                  }
                },
              ),
            );
          }).toList(),
        ),
      ]
    );
  }
}

Future _deleteImageFromCache(String url) async {
  await CachedNetworkImage.evictFromCache(url);
}