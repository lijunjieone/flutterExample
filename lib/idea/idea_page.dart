

import 'package:flutter/material.dart';

class IdeaPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _IdeaPageState();
  }

}


class _IdeaPageState extends State<IdeaPage> {

  @override
  Widget build(BuildContext context) {

    return new MaterialApp(
      home:new Scaffold(
        appBar: new AppBar(
          title: new Text("Think"),
            actions: <Widget>[
              new Container(

              )
            ],
        ),
        body: new Center(
          child: null,
        ),
      )
    );
  }

}