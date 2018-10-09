import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_app3/examples/http_get.dart';
import 'package:flutter_app3/index/hello.dart';
import 'package:flutter_app3/my.dart';
import 'package:flutter_app3/home/home.dart';
import 'package:flutter_app3/index/index.dart';

class DrawerPage extends StatelessWidget {
  ContainerPage page = new ContainerPage();
  Map<String, StatefulWidget> pages = new HashMap();

  void init() {
    pages["Main"] = new MyHomePage(title: "Main");
    pages["Index"] = new Index();
    pages["HttpList"] = new MyGetHttpData();
    pages["Hello"] = new HelloWorld2();
  }

  @override
  Widget build(BuildContext context) {
    init();
    return Scaffold(
      appBar: AppBar(title: Text("drawer")),
      body: page,
      drawer: Drawer(
        child: new ListView.builder(
            itemCount: pages.keys.length + 1,
            itemBuilder: (BuildContext context, int index) {
              if (index == 0) {
                return new Container(
                  child: new DrawerHeader(
                    child: Text("Some Examples"),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                    ),
                  ),
                );
              } else {
                String key = pages.keys.elementAt(index - 1);
                return new Container(
                  child: new Center(
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        new ListTile(
                          title: new Text(key),
                          onTap: () {
                            Navigator.pop(context);
//                            page.changeItem(index);
                            page.changeWidget(pages[key]);
                          },
                        )
                      ],
                    ),
                  ),
                );
              }
            }),
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

  void changeWidget(StatefulWidget widget) {
    state.changeWidget(widget);
  }
}

class _ContainerPageState extends State<ContainerPage>
    with TickerProviderStateMixin {
  StatefulWidget _currentPage =new MyHomePage(title: "Main");
  @override
  void initState() {
    super.initState();
  }

  void changeWidget(StatefulWidget widget) {
    setState(() {
      _currentPage = widget;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(child: _currentPage),
    );
  }
}
