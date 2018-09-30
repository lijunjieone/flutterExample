

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

    return
      new Scaffold(
        appBar: new AppBar(
          title: new Text("Think")
        ),
        body: new Center(
          child: new Text("Container"),
        ),
    );
  }

}