import 'package:flutter/material.dart';
import 'package:lavagecom_app/classes/lavageur.dart';
import 'package:lavagecom_app/widgets/lavagiste_box.dart';

class CustomSearchDelegate extends SearchDelegate {
// Demo list to show querying
  final lavageurs = <Lavageur>[
    Lavageur(3, "Mohmed lavage", 100, 34.020882, -6.841650, true, "rabat"),
    Lavageur(4, "Hassan lavage", 120, 34.0337, -6.7708, true, "meknes"),
    Lavageur(5, "Mouhcine lavage", 200, 33.9203, -6.9274, true, "rabat"),
    Lavageur(5, "Karim lavage", 220, 34.2541, -6.5890, false, "Casa"),
    Lavageur(2, "Yassine lavage", 220, 33.8052, -6.7869, true, "rabat"),
    Lavageur(3, "Mouad lavage", 220, 33.8955, -6.3207, true, "fes"),
  ];
// first overwrite to
// clear the search text
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: Icon(Icons.clear),
      ),
    ];
  }

// second overwrite to pop out of search menu
  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: Icon(Icons.arrow_back),
    );
  }

// third overwrite to show query result
  @override
  Widget buildResults(BuildContext context) {
    List<Lavageur> matchQuery = [];
    for (var lavageur in lavageurs) {
      if (lavageur.name.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(lavageur);
      }
    }
    return Padding(
      padding: EdgeInsets.all(10),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            for (var result in matchQuery)
              Lavagiste_Card(
                name: result.name,
                price1: result.price,
                price2: result.price,
                rating: result.rating,
                ville: result.ville,
                active: result.active,
                go_to_location: () {
                  // mapController.move(
                  //   LatLng(lavageur.lat, lavageur.long),
                  //   15.2,
                  // );
                },
              ),
          ],
        ),
      ),
    );
  }

// last overwrite to show the
// querying process at the runtime
  @override
  Widget buildSuggestions(BuildContext context) {
    List<Lavageur> matchQuery = [];
    for (var lavageur in lavageurs) {
      if (lavageur.name.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(lavageur);
      }
    }
    return Padding(
      padding: EdgeInsets.all(10),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            for (var lavageur in lavageurs)
              Lavagiste_Card(
                name: lavageur.name,
                price1: lavageur.price,
                price2: lavageur.price,
                rating: lavageur.rating,
                ville: lavageur.ville,
                active: lavageur.active,
                go_to_location: () {
                  // mapController.move(
                  //   LatLng(lavageur.lat, lavageur.long),
                  //   15.2,
                  // );
                },
              ),
          ],
        ),
      ),
    );
  }
}
