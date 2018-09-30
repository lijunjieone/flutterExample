

import 'dart:async';
import 'package:http/http.dart' as http;

import 'dart:convert';

import 'package:flutter/material.dart';

class MyGetHttpData extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyGetHttpDataState();
  }

}


class MyGetHttpDataState extends State<MyGetHttpData> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text("Retrieve JSON Data via HTTP GET"),
      ),
      body: new ListView.builder(
        itemCount: data == null ? 0 :data.length,
          itemBuilder: (BuildContext context,int index) {
//            int i = index % data.length;
        return new Container(
          child: new Center(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                new Card(
                  child: new Text(

                    data[index]['name'],
                    style: new TextStyle(
                      fontSize: 20.0,color:Colors.blue),
                    ),

                  ),

              ],
            ),
          ),
        );
      }),
    );
  }

  final String url = "https://swapi.co/api/people";

  List data;

  Future<String> getJsonData() async {

    var resp = await http.get(
      Uri.encodeFull(url),
      headers:{"Accept":"application/json"});

    print(resp.body);

    setState(() {
      var dataConvertedToJson = json.decode(resp.body);
      data = dataConvertedToJson['results'];
    });

    return "Successfull";



  }

  @override
  void initState() {
    super.initState();
    this.getJsonData();
  }



}