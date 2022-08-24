// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
// import 'package:latlng/latlng.dart';
import 'package:latlong2/latlong.dart';

class Map_Screen extends StatefulWidget {
  const Map_Screen({Key? key}) : super(key: key);

  @override
  State<Map_Screen> createState() => _Map_ScreenState();
}

class _Map_ScreenState extends State<Map_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ))
        ],
        backgroundColor: Colors.white,
      ),
      body: FlutterMap(
        options: MapOptions(
          center: LatLng(34.020882, -6.841650),
          zoom: 9.2,
        ),
        layers: [
          TileLayerOptions(
            urlTemplate: "https://tile.openstreetmap.org/{z}/{x}/{y}.png",
            userAgentPackageName: 'com.example.app',
          ),
          MarkerLayerOptions(
            markers: [
              Marker(
                point: LatLng(34.020882, -6.841650),
                width: 80,
                height: 80,
                builder: (context) => IconButton(
                  icon: Icon(Icons.location_on),
                  iconSize: 40,
                  color: Colors.red,
                  onPressed: () {
                    print("show modal");
                    showModalBottomSheet(
                        context: context,
                        builder: (builder) {
                          return Container(
                            height: 300,
                            color: Colors.white,
                            child: Text("modal buttom sheet"),
                          );
                        });
                  },
                ),
              ),
              Marker(
                point: LatLng(34.0337, -6.7708),
                width: 80,
                height: 80,
                builder: (context) => IconButton(
                  icon: Icon(Icons.location_on),
                  iconSize: 40,
                  color: Colors.deepPurpleAccent,
                  onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (builder) {
                      return Container(
                        height: 300,
                        color: Colors.white,
                        child: Text("modal buttom sheet"),
                      );
                    });
                  },
                ),
              ),
            ],
          ),
          PolylineLayerOptions(
            polylineCulling: false,
            polylines: [
              Polyline(
                points: [
                  LatLng(34.020882, -6.841650),
                  LatLng(34.0337, -6.7708),
                ],
                color: Colors.blue,
                borderColor: Colors.blue,
                borderStrokeWidth: 2.0,
                isDotted: false,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
