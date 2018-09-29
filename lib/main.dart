
import 'package:flutter/material.dart';
import 'package:flutter_app3/home.dart';
import 'index/index.dart';


void main() => runApp(new ZhiHu());

class ZhiHu extends StatelessWidget {

  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "知乎",
      home: new Index(),
//      home: new MyApp(),
    );
  }
}