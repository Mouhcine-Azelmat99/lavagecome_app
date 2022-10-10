// ignore_for_file: prefer_const_constructors
// ignore: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:lavagecom_app/widgets/packe.dart';

class MesPackes extends StatefulWidget {
  const MesPackes({Key? key}) : super(key: key);

  @override
  State<MesPackes> createState() => _MesPackesState();
}

class _MesPackesState extends State<MesPackes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        elevation: 0,
        title: Text("Mes Packes"),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            Packe(),
            Packe(),
            Packe(),
          ],
        ),
      ),
    );
  }
}
