import 'package:flutter/material.dart';
class Recommendation extends StatefulWidget {
  @override
  _Recommendation createState() => _Recommendation();
}

class _Recommendation extends State<Recommendation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Recommedation"),
        centerTitle: false,
      ),
      body: new Center(
        child: new Text("Recommedation",
          style: new TextStyle(fontSize: 25.0),
        ),
      ),
    );
  }
}
