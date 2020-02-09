import 'package:flutter/material.dart';
class Logout extends StatefulWidget {
  @override
  _Logout createState() => _Logout();
}

class _Logout extends State<Logout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Logout"),
        centerTitle: false,
      ),
      body: new Center(
        child: new Text("You have log out",
          style: new TextStyle(fontSize: 25.0),
        ),
      ),
    );
  }
}
