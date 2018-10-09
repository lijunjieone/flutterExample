import 'package:flutter/material.dart';

class CaseList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _CaseListState();
  }
}

class _CaseListState extends State<CaseList> {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            new Card(
              child: new ListTile(
                title: new Text("test1"),
                onTap: () {
                  print("test1");
                },
              ),
            ),
            new Card(
              child: new ListTile(
                title: new Text(
                  "test2",
                  style: new TextStyle(fontSize: 20.0, color: Colors.blue),
                ),
                onTap: () {
                  print("test2");
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
