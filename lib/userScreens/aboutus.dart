import 'package:flutter/material.dart';
class AboutUs extends StatefulWidget {
  @override
  _AboutUs createState() => _AboutUs();
}

class _AboutUs extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("About us"),
        centerTitle: false,
      ),
      body: new Center(
        child: new Text("About us",
          style: new TextStyle(fontSize: 25.0),
        ),
      ),
    );
  }
}
