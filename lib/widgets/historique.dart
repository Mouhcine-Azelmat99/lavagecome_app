import 'package:flutter/material.dart';

class Historique extends StatelessWidget {
  const Historique({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
