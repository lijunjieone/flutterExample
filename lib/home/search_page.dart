import 'package:flutter/material.dart';
import 'package:flutter_app3/GlobalConfig.dart';

class SearchPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _SearchPageState();
  }



}

class _SearchPageState extends State<SearchPage> {
   Widget searchInput() {
     return new Container(
       child: new Row(
         children: <Widget>[
           new Container(
             child: new FlatButton.icon(onPressed: () {
               Navigator.of(context).pop();
             }, icon: new Icon(Icons.arrow_back,color:Colors.black12) , label: new Text("")
             ),
             width: 60.0,
           ),
           new Expanded(child: new TextField(
             autofocus: true,
               decoration: new InputDecoration.collapsed(hintText: "search",hintStyle: new TextStyle(color:Colors.red)
               ),
           )
           )
         ],
       ),
       decoration: new BoxDecoration(
         borderRadius: const BorderRadius.all( const Radius.circular(4.0)),
         color: Colors.amber
       ),
     );
   }

   @override
  Widget build(BuildContext context) {
     return new MaterialApp(
       theme:ThemeData.dark(),
       home: new Scaffold(
         appBar: new AppBar(
           title: searchInput(),
         ),
         body: new SingleChildScrollView(
           child: new Column(
             children: <Widget>[
               new Container(
                 child: new Text("热搜",style: new TextStyle(
                   fontWeight: FontWeight.bold,fontSize: 16.0
                 ),
                 ),
                 margin: const EdgeInsets.only(top:16.0,left: 16.0,bottom: 16.0),
                 alignment: Alignment.topLeft,
               ),
               new Container(
                 child: new Text("搜索历史", style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0)),
                 margin: const EdgeInsets.only(left: 16.0, bottom: 16.0),
                 alignment: Alignment.topLeft,
               ),
               new Container(
                 child: new Row(
                   children: <Widget>[
                     new Container(
                       child: new Icon(Icons.access_time, color: GlobalConfig.fontColor, size: 16.0),
                       margin: const EdgeInsets.only(right: 12.0),
                     ),
                     new Expanded(
                       child: new Container(
                         child: new Text("业余兴趣", style: new TextStyle( color: GlobalConfig.fontColor, fontSize: 14.0),),
                       ),
                     ),
                     new Container(
                       child: new Icon(Icons.clear, color: GlobalConfig.fontColor, size: 16.0),
                     )
                   ],
                 ),
                 margin: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 10.0),
                 padding: const EdgeInsets.only(bottom: 10.0),
                 decoration: new BoxDecoration(
                     border: new BorderDirectional(bottom: new BorderSide(color: GlobalConfig.dark == true ?  Colors.white12 : Colors.black12))
                 ),
               ),
             ],
           ),
         ),
       )
     );
  }
}