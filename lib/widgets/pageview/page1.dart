import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: const [
      SizedBox(
        height: 15,
      ),
      Text(
        "Publish Your",
        style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
      ),
      SizedBox(
        height: 6,
      ),
      Text(
        "Passion in Own Way",
        style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
      ),
      SizedBox(
        height: 6,
      ),
      Text(
        "It's Free",
        style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
      ),
      SizedBox(
        height: 10,
      ),
    ]);
  }
}
