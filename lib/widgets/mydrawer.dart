// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  bool switchEtat = true;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(top: 80, bottom: 30),
            color: Colors.blue,
            child: Column(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Text(
                      "MH",
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueAccent),
                    ),
                  ),
                ),
                Text(
                  "Mohcine Azelmat",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "mouhcine@gmail.com",
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  color: Colors.white,
                  height: 5,
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "modifier le profile",
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.edit_note_outlined,
                        size: 35,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed("mes_packes");
            },
            child: ListTile(
              leading: Icon(Icons.badge_rounded),
              title: Text("Mes Packes"),
            ),
          ),
          ListTile(
              leading: Switch(
                inactiveThumbColor: Colors.red,
                activeColor: Colors.green,
                onChanged: (v) {
                  setState(() {
                    switchEtat = !switchEtat;
                  });
                },
                value: switchEtat,
              ),
              title: Text("Etat")),
          InkWell(
            onTap: () {
              Navigator.of(context).pushReplacementNamed("login");
            },
            child: ListTile(
              leading: Icon(Icons.logout),
              title: Text("Deconnecter"),
            ),
          ),
        ],
      ),
    );
  }
}
