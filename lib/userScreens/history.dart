import 'package:flutter/material.dart';
class GirliesHistory extends StatefulWidget {
  @override
  _GirliesHistoryState createState() => _GirliesHistoryState();
}

class _GirliesHistoryState extends State<GirliesHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("History"),
        centerTitle: false,
      ),
      body: new Center(
        child: new Text("My History",
          style: new TextStyle(fontSize: 25.0),
        ),
      ),
    );
  }
}
