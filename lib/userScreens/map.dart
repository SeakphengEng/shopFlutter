import 'package:flutter/material.dart';
class Map extends StatefulWidget {
  @override
  _Map createState() => _Map();
}

class _Map extends State<Map> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Map"),
        centerTitle: false,
      ),
      body: new Center(
        child: new Text("Your Location",
          style: new TextStyle(fontSize: 25.0),
        ),
      ),
    );
  }
}
