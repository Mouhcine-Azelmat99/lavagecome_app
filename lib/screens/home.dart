// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
// import 'package:latlng/latlng.dart';
import 'package:latlong2/latlong.dart';
import 'package:lavagecom_app/screens/map_screen.dart';
import 'package:lavagecom_app/widgets/mydrawer.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late final MapController mapController;
  @override
  void initState() {
    super.initState();
    mapController = MapController();
  }

  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _key,
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              _key.currentState?.openDrawer();
            },
            icon: Image.asset(
              "assets/icons/align_left.png",
              width: 30,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                "assets/icons/magnifying_glass.png",
                width: 30,
              ),
            )
          ],
          backgroundColor: Colors.white,
        ),
        drawer: MyDrawer(),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 400,
                  child: Stack(
                    children: [
                      FlutterMap(
                        mapController: mapController,
                        options: MapOptions(
                          center: LatLng(34.020882, -6.841650),
                          zoom: 9.2,
                        ),
                        layers: [
                          TileLayerOptions(
                            urlTemplate:
                                "https://tile.openstreetmap.org/{z}/{x}/{y}.png",
                            userAgentPackageName: 'com.example.app',
                          ),
                          MarkerLayerOptions(
                            markers: [
                              Marker(
                                point: LatLng(34.020882, -6.841650),
                                width: 80,
                                height: 80,
                                builder: (context) => Container(
                                    child: IconButton(
                                  icon: Icon(Icons.location_on),
                                  iconSize: 40,
                                  color: Colors.red,
                                  onPressed: () {
                                    showModalBottomSheet(
                                        context: context,
                                        builder: (builder) {
                                          return Container(
                                            height: 300,
                                            child: Text("modal buttom sheet"),
                                            color: Colors.blue,
                                          );
                                        });
                                  },
                                )),
                              ),
                              Marker(
                                point: LatLng(34.0337, -6.7708),
                                width: 80,
                                height: 80,
                                builder: (context) => Container(
                                    child: IconButton(
                                  icon: Icon(Icons.location_on),
                                  iconSize: 40,
                                  color: Colors.deepPurpleAccent,
                                  onPressed: () {
                                    showModalBottomSheet(
                                        context: context,
                                        builder: (builder) {
                                          return Container(
                                            height: 300,
                                            child: Text("modal buttom sheet"),
                                            color: Colors.white,
                                          );
                                        });
                                  },
                                )),
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
                        nonRotatedChildren: [
                          AttributionWidget.defaultWidget(
                            source: 'OpenStreetMap contributors',
                            onSourceTapped: null,
                          ),
                        ],
                      ),
                      Positioned(
                        bottom: 10,
                        right: 10,
                        child: Container(
                          padding: EdgeInsets.all(3),
                          // ignore: sort_child_properties_last
                          child: IconButton(
                            icon: Image.asset(
                              width: 25,
                              "assets/icons/plein_ecran.png",
                              color: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.of(context).pushNamed('map_screen');
                            },
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.blue[300],
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  offset: Offset.zero,
                                  blurRadius: 3,
                                )
                              ]),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          // ignore: prefer_const_literals_to_create_immutables
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset.zero,
                              blurRadius: 3,
                            )
                          ],
                          color: Colors.blue[100],
                        ),
                        height: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Text(
                              "+ 30",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.deepPurpleAccent),
                            ),
                            Text(
                              "Lavageur",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.deepPurpleAccent),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          // ignore: prefer_const_literals_to_create_immutables
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset.zero,
                              blurRadius: 3,
                            )
                          ],
                          color: Colors.deepOrangeAccent[200],
                        ),
                        height: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Text(
                              "+ 200",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(
                              "Clients",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          // ignore: prefer_const_literals_to_create_immutables
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset.zero,
                              blurRadius: 3,
                            )
                          ],
                          color: Colors.deepPurpleAccent,
                        ),
                        height: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Text(
                              "+ 50",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(
                              "Ville",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.grey[100],
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 15),
                        color: Colors.white,
                        child: ListTile(
                          style: ListTileStyle.list,
                          focusColor: Colors.white,
                          title: Text("Lavage Name"),
                          leading: Icon(Icons.history),
                          subtitle: Text("sale || 100\$"),
                          trailing: IconButton(
                            icon: Icon(Icons.call),
                            onPressed: () {},
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 15),
                        color: Colors.white,
                        child: ListTile(
                          style: ListTileStyle.list,
                          focusColor: Colors.white,
                          title: Text("Lavage Name"),
                          leading: Icon(Icons.history),
                          subtitle: Text("sale || 100\$"),
                          trailing: IconButton(
                            icon: Icon(Icons.call),
                            onPressed: () {},
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 15),
                        color: Colors.white,
                        child: ListTile(
                          style: ListTileStyle.list,
                          focusColor: Colors.white,
                          title: Text("Lavage Name"),
                          leading: Icon(Icons.history),
                          subtitle: Text("sale || 100\$"),
                          trailing: IconButton(
                            icon: Icon(Icons.call),
                            onPressed: () {},
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 15),
                        color: Colors.white,
                        child: ListTile(
                          style: ListTileStyle.list,
                          focusColor: Colors.white,
                          title: Text("Lavage Name"),
                          leading: Icon(Icons.history),
                          subtitle: Text("sale || 100\$"),
                          trailing: IconButton(
                            icon: Icon(Icons.call),
                            onPressed: () {},
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

// AIzaSyBRaD6L2NfvB-VF9AgOJlWDDFUP__ajjcI
