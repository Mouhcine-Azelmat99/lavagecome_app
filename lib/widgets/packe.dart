import 'package:flutter/material.dart';

class Packe extends StatelessWidget {
  const Packe({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Text(
              "Premier Packe",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Pack_Service(
                  title: "Lavage complet",
                  price: 150,
                ),
                Pack_Service(
                  title: "Lavage complet",
                  price: 150,
                ),
                Pack_Service(
                  title: "Lavage complet",
                  price: 150,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Pack_Service extends StatelessWidget {
  const Pack_Service({
    Key? key,
    required this.title,
    required this.price,
  }) : super(key: key);
  final String title;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(7),
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Icon(
              Icons.done,
              color: Colors.blueAccent,
              size: 30,
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              "$price DH",
              style: TextStyle(
                fontSize: 16,
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
