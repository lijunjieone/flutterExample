import 'package:flutter/material.dart';
import 'package:flutter_app3/index/index.dart';


class DrawerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("drawer")),
      body: new Index(),
      drawer: Drawer(
        child: ListView(
        padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text("DrawerHeader"),
              decoration: BoxDecoration(
                color:Colors.blue,
              ),
            ),
            ListTile(
              title: Text("Item 1"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Item 2"),
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
      ),
      ),
    );
  }

}