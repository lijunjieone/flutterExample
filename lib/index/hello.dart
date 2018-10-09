import 'package:flutter/material.dart';

class HelloWorld extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Center(
      child: new Text("Hello Flutter"),

    );
  }
}


class HelloWorld2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _HelloWorldState();
  }
}


class _HelloWorldState extends State<HelloWorld2> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return HelloWorld();
  }
}