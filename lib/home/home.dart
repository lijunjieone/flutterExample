

import 'package:flutter/material.dart';
import 'package:flutter_app3/my.dart';
import 'package:flutter_app3/home/search_page.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _HomePageState();
  }

}

class _HomePageState extends State<HomePage> {

  Widget barSearch() {
    return new Container(
      child: new Row(
        children: <Widget>[
          new Expanded(child: new FlatButton.icon(
              onPressed: () {
                Navigator.of(context).push(new MaterialPageRoute(builder: (context) {
                  return new SearchPage();
                }));
              },
              icon: new Icon(
                Icons.search,
                color:Colors.blue,
                size: 16.0,
              ), label: new Text(
            "flutter learn example",
            style: new TextStyle(color:Colors.blue),
          ),

          ),
          ),
          new Container(
            decoration: new BoxDecoration(
              border: new BorderDirectional(
                start: new BorderSide(
                  color:Colors.blue,width: 1.0)
                )
              ),
                height: 2.0,
                width: 1.0,
            ),
        ],
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(length: 3, child: new Scaffold(
      appBar: new AppBar(
        title: barSearch(),
          bottom: new TabBar(labelColor: Colors.black87,
          unselectedLabelColor: Colors.red,
          tabs: [
            new Tab(text:"关注"),
            new Tab(text:"推荐"),
            new Tab(text: "热榜"),
          ]),
      ),
      body: new TabBarView(children: [
        new MyApp(),
        new MyApp(),
        new MyApp(),
      ]),
    ));
  }

}