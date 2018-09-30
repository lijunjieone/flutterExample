import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_app3/examples/http_get.dart';
import 'package:flutter_app3/my.dart';
import 'package:flutter_app3/home/home.dart';
import 'package:flutter_app3/index/index.dart';


class DrawerPage extends StatelessWidget {
  ContainerPage page = new ContainerPage();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("drawer")),
      body: page,
      drawer: Drawer(
        child: ListView(
        padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text("Some Examples"),
              decoration: BoxDecoration(
                color:Colors.blue,
              ),
            ),
            ListTile(
              title: Text("Navigation"),
              onTap: () {
                Navigator.pop(context);

              page.changeItem(0);
              },
            ),
            ListTile(
              title: Text("MainPage"),
              onTap: () {
                Navigator.pop(context);
                page.changeItem(1);
              },
            ),

            ListTile(
              title: Text("GetListFromNetwork"),
              onTap: () {
                Navigator.pop(context);
                page.changeItem(2);
              },
            )
          ],
      ),
      ),
    );
  }
}

class ContainerPage extends StatefulWidget {
  _ContainerPageState state;
  @override
  State<StatefulWidget> createState() {
    state = new _ContainerPageState();
    return state;
  }


  void changeItem(int index) {
    state.changeItem(index);
  }

}


class _ContainerPageState extends State<ContainerPage> with TickerProviderStateMixin {
  int _currentIndex = 1;
  List<StatefulWidget> _pageList;
  StatefulWidget _currentPage;

  @override
  void initState() {
    super.initState();

    _pageList = [
      new Index(),
      new MyHomePage(title: 'Flutter2 Demo Home Page'),
      new MyGetHttpData(),
    ];

    _currentPage = _pageList[_currentIndex];
  }


  void changeItem(int index) {

    setState(() {
      _currentIndex = index;
      _currentPage = _pageList[_currentIndex];
    });
//    _rebuild();

  }

  void _rebuild() {
    setState(() {

    });
  }
  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      body: new Center(
        child: _currentPage
      ),
    );



  }

}