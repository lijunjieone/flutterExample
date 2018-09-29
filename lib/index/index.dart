

import 'package:flutter/material.dart';
import 'package:flutter_app3/home.dart';
import 'package:flutter_app3/idea/idea_page.dart';
import 'package:flutter_app3/index/navigation_icon_view.dart';

class Index extends StatefulWidget {

  @override
  State createState() {
    return new _IndexState();
  }
}


class _IndexState extends State<Index> with TickerProviderStateMixin {

  int _currentIndex =0;
  List<NavigationIconView> _navigationViews;
  List<StatefulWidget> _pageList;
  StatefulWidget _currentPage;

  @override
  void initState() {
    super.initState();

    _navigationViews = <NavigationIconView>[
      new NavigationIconView(
        icon:new Icon(Icons.assessment),
        title: new Text("Index"),
        vsync: this
      ),
      new NavigationIconView(
        icon:new Icon(Icons.all_inclusive),
        title: new Text("Think"),
        vsync: this
      ),
    ];

    for(NavigationIconView view in _navigationViews) {
      view.controller.addListener(_rebuild);
    }


    _pageList = <StatefulWidget> [
      new MyHomePage(title: 'Flutter2 Demo Home Page'),
      new IdeaPage(),
    ];
    _currentPage = _pageList[_currentIndex];
  }


  void _rebuild() {
    setState(() {

    });
  }

  @override
  void dispose() {

    super.dispose();

    for(NavigationIconView view in _navigationViews) {
      view.controller.dispose();
    }
  }

  Widget build(BuildContext context) {
    final BottomNavigationBar bottomNavigationBar = BottomNavigationBar(items: _navigationViews
    .map((NavigationIconView navigationIconView) =>navigationIconView.item).toList(),
    currentIndex: _currentIndex,
        fixedColor: Colors.blue,
        type: BottomNavigationBarType.fixed,
      onTap:(int index) {
      setState(() {
        _navigationViews[_currentIndex].controller.reverse();
        _currentIndex = index;
        _navigationViews[_currentIndex].controller.forward();
        _currentPage = _pageList[_currentIndex];
      });
    }
    );

    return new MaterialApp(
      home:new Scaffold(
        body: new Center(
          child: _currentPage,
        ),
        bottomNavigationBar: bottomNavigationBar,
      ),

    );

  }

}

