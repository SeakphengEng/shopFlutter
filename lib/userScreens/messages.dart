import 'package:flutter/material.dart';
class Girliesmessages extends StatefulWidget {
  @override
  _GirliesmessagesState createState() => _GirliesmessagesState();
}

class _GirliesmessagesState extends State<Girliesmessages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Messages"),
        centerTitle: false,
      ),
      body: new Center(child: new Text(
        "My Messages",
        style: new TextStyle(fontSize: 25.0),
      ),
      ),
    );
  }
}
