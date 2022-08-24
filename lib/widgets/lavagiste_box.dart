// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lavagecom_app/constants.dart';
import 'package:lavagecom_app/widgets/rating.dart';

class Lavagiste_Card extends StatelessWidget {
  const Lavagiste_Card({
    Key? key,
    required this.price1,
    required this.price2,
    required this.name,
    required this.active,
    required this.rating,
    required this.go_to_location,
    required this.ville,
  }) : super(key: key);
  final double price1;
  final double price2;
  final String name;
  final String ville;
  final bool active;
  final int rating;
  final Function go_to_location;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              "assets/icons/profile.png",
              width: 70,
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  ville,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Rating(rating: rating),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "$price1\$ - $price2\$",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [kshadow],
                    color: Colors.blue[50],
                  ),
                  child: IconButton(
                    onPressed: () {
                      print("go to location");
                      go_to_location();
                    },
                    icon: Icon(Icons.location_on_outlined),
                    color: Colors.red,
                    iconSize: 26,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [kshadow],
                    color: Colors.deepPurpleAccent,
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Reserver",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
