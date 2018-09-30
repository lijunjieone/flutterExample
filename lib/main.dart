
import 'package:flutter/material.dart';
import 'package:flutter_app3/drawer.dart';
import 'package:flutter_app3/my.dart';
import 'index/index.dart';


void main() => runApp(new ZhiHu());

class ZhiHu extends StatelessWidget {

  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "知乎",
      home: new DrawerPage(),
//      home: new MyApp(),
    );
  }
}