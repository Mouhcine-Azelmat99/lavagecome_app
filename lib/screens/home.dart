// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_single_cascade_in_expression_statements

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geolocator/geolocator.dart';
// import 'package:latlng/latlng.dart';
import 'package:latlong2/latlong.dart';
import 'package:lavagecom_app/classes/lavageur.dart';
import 'package:lavagecom_app/constants.dart';
import 'package:lavagecom_app/screens/map_screen.dart';
import 'package:lavagecom_app/widgets/historique.dart';
import 'package:lavagecom_app/widgets/lavagiste_box.dart';
import 'package:lavagecom_app/widgets/mydrawer.dart';
import 'package:lavagecom_app/widgets/rating.dart';
import 'package:lavagecom_app/widgets/showButtom.dart';

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
    get_markers();
    // getPosition();
  }

  // Future getPosition() async {
  //   bool services;
  //   services = await Geolocator.isLocationServiceEnabled();
  //   if (!services) {
  //     AwesomeDialog(
  //       context: context,
  //       dialogType: DialogType.WARNING,
  //       animType: AnimType.BOTTOMSLIDE,
  //       title: 'Service localisation',
  //       desc: 'Service disabled ',
  //       btnCancelOnPress: () {},
  //       btnOkOnPress: () {},
  //     )..show();
  //   }
  //   // LocationPermission per = await Geolocator.checkPermission();
  //   // print("Permition  :  $per");
  // }

  final lavageurs = <Lavageur>[
    Lavageur(3, "Mohmed lavage", 100, 34.020882, -6.841650, true),
    Lavageur(4, "Hassan lavage", 120, 34.0337, -6.7708, true),
    Lavageur(5, "Mouhcine lavage", 200, 33.9203, -6.9274, true),
    Lavageur(5, "Karim lavage", 220, 34.2541, -6.5890, false),
    Lavageur(2, "Yassine lavage", 220, 33.8052, -6.7869, true),
    Lavageur(3, "Mouad lavage", 220, 33.8955, -6.3207, true),
  ];

  final markers = <Marker>[];

  get_markers() {
    for (var l in lavageurs) {
      markers.add(Marker(
        point: LatLng(l.lat, l.long),
        width: 80,
        height: 80,
        builder: (context) => Container(
            child: IconButton(
          icon: Icon(Icons.location_on),
          iconSize: 40,
          color: l.active ? Colors.green : Colors.red,
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (builder) {
                  return showButtom();
                });
          },
        )),
      ));
    }
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
                  height: 500,
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
                            markers: markers,
                          ),
                          // PolylineLayerOptions(
                          //   polylineCulling: false,
                          //   polylines: [
                          //     Polyline(
                          //       points: [
                          //         LatLng(34.020882, -6.841650),
                          //         LatLng(34.0337, -6.7708),
                          //       ],
                          //       color: Colors.blue,
                          //       borderColor: Colors.blue,
                          //       borderStrokeWidth: 2.0,
                          //       isDotted: false,
                          //     ),
                          //   ],
                          // ),
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
                              color: Colors.blue,
                              boxShadow: [kshadow]),
                        ),
                      ),
                    ],
                  ),
                ),
                // Statistics(),
                // Boxes
                Padding(
                  padding: EdgeInsets.all(15),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        for (var lavageur in lavageurs)
                          Lavagiste_Card(
                            name: lavageur.name,
                            price1: lavageur.price,
                            price2: lavageur.price,
                            rating: lavageur.rating,
                            active: lavageur.active,
                            go_to_location: () {
                              mapController.move(
                                LatLng(lavageur.lat, lavageur.long),
                                15.2,
                              );
                            },
                          ),
                      ],
                    ),
                  ),
                )
                // Historique()
              ],
            ),
          ),
        ));
  }
}






// AIzaSyBRaD6L2NfvB-VF9AgOJlWDDFUP__ajjcI
